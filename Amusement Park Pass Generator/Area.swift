//
//  Area.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

// MARK: Area
enum AreasEnum {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
    case officheAreas
}

extension AreasEnum {
    var name: String {
        switch self {
        case .amusementAreas:
            return "Amusement Areas"
        case .kitchenAreas:
            return "Kitchen Areas"
        case .rideControlAreas:
            return "Ride Control Areas"
        case .maintenanceAreas:
            return "Maintenance Areas"
        case .officheAreas:
            return "Office Areas"
        }
    }
}

extension AreasEnum {
    var accessLevel: Int {
        switch self {
        case .amusementAreas:
            return 1
        case .kitchenAreas:
            return 2
        case .rideControlAreas:
            return 3
        case .maintenanceAreas:
            return 4
        case .officheAreas:
            return 5
        }
    }
}

class Area {
    var area: AreasEnum
    let swipeTimer = 5
    
    init(area: AreasEnum) {
        self.area = area
    }
    
    func guestSwipePass(fromPass pass: GuestPass) -> String {
        if pass.entrant.entrantType.accessLevel >= area.accessLevel {
            return "Access Granted"
        }
        return "Access not allowed"
    }
    
    func isAbleToSwipe(fromPass pass: inout GuestPass) -> Bool {
        if pass.swipeTime == nil {
            pass.swipeTime = Date()
            return true
        }
        let calendar = Calendar.current
        let unitFlags = Set<Calendar.Component>([ .second ])
        let dateComponents = calendar.dateComponents(unitFlags, from: pass.swipeTime!, to: Date())
        let seconds = dateComponents.second
        if let seconds = seconds {
            if seconds < swipeTimer {
                return false
            }
        }
        return true
    }
    
    
    func employeeSwipePass(fromPass pass: inout EmployeePass) -> String {
        if pass.entrant.entrantType.accessLevel == EntrantsTypesEnum.rideServicesEmployee.accessLevel && area.accessLevel == AreasEnum.kitchenAreas.accessLevel {
            return "Access not allowed"
        } else if pass.entrant.entrantType.accessLevel >= area.accessLevel {
            if isAbleToSwipe(fromPass: &pass) {
                return "Access Granted"
            }
            return "Not able to swipe twice in a row"
        }
        return "Access not allowed"
    }
    
    func isAbleToSwipe(fromPass pass: inout EmployeePass) -> Bool {
        if pass.swipeTime == nil {
            pass.swipeTime = Date()
            return true
        }
        let calendar = Calendar.current
        let unitFlags = Set<Calendar.Component>([ .second ])
        let dateComponents = calendar.dateComponents(unitFlags, from: pass.swipeTime!, to: Date())
        let seconds = dateComponents.second
        if let seconds = seconds {
            if seconds < swipeTimer {
                return false
            }
        }
        return true
    }
}

class AmusementArea: Area {
    override init(area: AreasEnum) {
        super.init(area: area)
    }
    
    func swipePass(with pass: GuestPass) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let currentDate = dateFormatter.string(from: Date())
        
        if let birthDate = pass.entrant.dateOfBirth {
            let birthDateFormatted = dateFormatter.string(from: birthDate)
            if currentDate == birthDateFormatted {
                return "Happy Birthday! Access Allowed"
            }
            return "Access Allowed"
        }
        return "Access Allowed"
    }
}

//
//  Area.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum areaEnum {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
    case officeAreas
}

extension areaEnum {
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
        case .officeAreas:
            return "Office Areas"
        }
    }
}

struct Area {
    let areas: [areaEnum] = [
        .amusementAreas,
        .kitchenAreas,
        .rideControlAreas,
        .maintenanceAreas,
        .officeAreas
    ]
    
}

/*
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
*/


/*
class Area {
    var area: AreasEnum
    let swipeTimer = 5
    
    init(area: AreasEnum) {
        self.area = area
    }
    
    // Swipe Pass for guests
    func guestSwipePass(fromPass pass: inout GuestPass) -> String {
        if pass.entrant.entrantType.accessLevel >= area.accessLevel {
            if isAbleToSwipe(fromPass: &pass) {
                return "Access Granted"
            }
            return "Not able to swipe twice in a row"
        }
        return "Access not allowed"
    }
    
    // Can a guest swipe twice in a row
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
    
    // Swipe pass for employees
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
    
    // Can an employee swipe twice in a row
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

// Amusement Area class implements both polymorphic code and the birthday test case. For simplicity I decided to display a custom birthday message only for the guests (and not the employee).
class AmusementArea: Area {
    
    override init(area: AreasEnum) {
        super.init(area: area)
    }
    
    // Here we are overriding code for the guestSwipePass method only and we implement a custom birthday message.
    override func guestSwipePass(fromPass pass: inout GuestPass) -> String {
        if pass.entrant.entrantType.accessLevel >= area.accessLevel {
            if isAbleToSwipe(fromPass: &pass) {
                if isGuestBirthDay(with: pass) {
                    return "Happy Birthday! Access Allowed"
                }
                return "Access Granted"
            }
            return "Not able to swipe twice in a row"
        }
        return "Access not allowed"
    }
    
    // Check if the current date if the Guest Birthday
    func isGuestBirthDay(with pass: GuestPass) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let currentDate = dateFormatter.string(from: Date())
        
        if let birthDate = pass.entrant.dateOfBirth {
            let birthDateFormatted = dateFormatter.string(from: birthDate)
            if currentDate == birthDateFormatted {
                return true
            }
        }
        return false
    }
}
*/

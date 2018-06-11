//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

// MARK: Entrant
enum EntrantsTypesEnum: String {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case foodServicesEmployee
    case rideServicesEmployee
    case maintenanceEmployee
    case managerEmployee
}

extension EntrantsTypesEnum {
    var name: String {
        switch self {
        case .classicGuest:
            return "Classic Guest"
        case .vipGuest:
            return "VIP Guest"
        case .freeChildGuest:
            return "Free Child Guest"
        case .foodServicesEmployee:
            return "Hourly Employee - Food Services"
        case .rideServicesEmployee:
            return "Hourly Employee - Ride Services"
        case .maintenanceEmployee:
            return "Hourly Employee - Maintenance"
        case .managerEmployee:
            return "Manager"
        }
    }
}

extension EntrantsTypesEnum {
    var accessLevel: Int {
        switch self {
        case .classicGuest, .vipGuest, .freeChildGuest:
            return 1
        case .foodServicesEmployee:
            return 3
        case .rideServicesEmployee:
            return 6
        case .maintenanceEmployee:
            return 10
        case .managerEmployee:
            return 15
        }
    }
}

extension EntrantsTypesEnum {
    func getFoodDiscount(type: EntrantsTypesEnum) -> Double {
        switch self {
        case .vipGuest:
            return 0.10
        case .foodServicesEmployee, .rideServicesEmployee, .maintenanceEmployee:
            return 0.15
        case .managerEmployee:
            return 0.25
        default:
            return 0.00
        }
    }
    
    func getMerchandiseDiscount(type: EntrantsTypesEnum) -> Double {
        switch self {
        case .vipGuest:
            return 0.20
        case .foodServicesEmployee, .rideServicesEmployee, .maintenanceEmployee, .managerEmployee:
            return 0.25
        default:
            return 0.00
        }
    }
}


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

struct Area {
    let area: AreasEnum
    
    // FIXME: Will need to throw an error later!
    func isEntrantAllowed(with entrantAccessLevel: Int) -> String {
        if entrantAccessLevel >= area.accessLevel {
            return "This user is allowed"
        }
        return "This user is not allowed"
    }
}


// MARK: Entrant inc. Guest and Employee
class Entrant {
    let entrantType: EntrantsTypesEnum
    
    init(entrantType: EntrantsTypesEnum) {
        self.entrantType = entrantType
    }
    
    func getFoodDiscount() -> Double {
        return self.entrantType.getFoodDiscount(type: self.entrantType)
    }
    
    func getMerchandiseDiscount() -> Double {
        return self.entrantType.getMerchandiseDiscount(type: self.entrantType)
    }
}

class Guest: Entrant {
    var dateOfBirth: Date?
    
    init(entrantType: EntrantsTypesEnum, dateOfBirth: Date?) {
        self.dateOfBirth = dateOfBirth
        super.init(entrantType: entrantType)
    }
}


class Employee: Entrant {
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: Int
    
    init(entrantType: EntrantsTypesEnum, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        super.init(entrantType: entrantType)
    }
}

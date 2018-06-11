//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

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


class Guest {
    let entrantType: EntrantsTypesEnum
    
    init(entrantType: EntrantsTypesEnum) {
        self.entrantType = entrantType
    }
}

class Employee {
    let entrantType: EntrantsTypesEnum
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: Int
    
    init(entrantType: EntrantsTypesEnum, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: Int) {
        self.entrantType = entrantType
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}

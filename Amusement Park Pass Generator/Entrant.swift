//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

enum EntrantsTypes: String {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case foodServicesEmployee
    case rideServicesEmployee
    case maintenanceEmployee
    case managerEmployee
}

extension EntrantsTypes {
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

extension EntrantsTypes {
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

enum Areas {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
    case officheAreas
}

extension Areas {
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

extension Areas {
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


class Guest {
    let entrantType: EntrantsTypes
    
    init(entrantType: EntrantsTypes) {
        self.entrantType = entrantType
    }
}

class Employee {
    let entrantType: EntrantsTypes
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: Int
    
    init(entrantType: EntrantsTypes, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: Int) {
        self.entrantType = entrantType
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}

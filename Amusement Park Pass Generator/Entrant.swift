//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

enum EntrantsTypes: String {
    case classicGuest = "Classic Guest"
    case vipGuest = "VIP Guest"
    case freeChildGuest = "Free Child Guest"
    case foodServicesEmployee = "Hourly Employee - Food Services"
    case rideServicesEmployee = "Hourly Employee - Ride Services"
    case maintenanceEmployee = "Hourly Employee - Maintenance"
    case managerEmployee = "Manager"
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

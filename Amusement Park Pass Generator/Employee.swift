//
//  Employee.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class Employee: Entrant {
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: Int
    
    init(entrantType: EntrantsTypesEnum?, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws {
        guard let firstName = firstName else { throw EntrantErrors.nameError(reason: "First Name is missing") }
        guard let lastName = lastName else { throw EntrantErrors.nameError(reason: "Last Name is missing") }
        
        guard let streetAddress = streetAddress else { throw EntrantErrors.addressError(reason: "Street Address is missing") }
        guard let city = city else { throw EntrantErrors.addressError(reason: "City is missing") }
        guard let state = state else { throw EntrantErrors.addressError(reason: "State is missing") }
        guard let zipCode = zipCode else { throw EntrantErrors.addressError(reason: "Zip code is missing") }
        
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        try super.init(entrantType: entrantType)
    }
}

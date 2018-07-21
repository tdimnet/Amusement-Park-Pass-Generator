//
//  Vendor.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class Vendor: Entrant {
    let firstName: String
    let lastName: String
    let vendorCompany: String
    let dateOfBirth: Date
    let dateOfVisit: Date
    
    init(entrantType: EntrantsTypesEnum?,firstName: String, lastName: String, vendorCompany: String, dateOfBirth: Date, dateOfVisit: Date) throws {
        guard !firstName.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        guard !lastName.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        guard !vendorCompany.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        
        self.firstName = firstName
        self.lastName = lastName
        self.vendorCompany = vendorCompany
        self.dateOfBirth = dateOfBirth
        self.dateOfVisit = dateOfVisit
        try super.init(entrantType: entrantType)
    }
}

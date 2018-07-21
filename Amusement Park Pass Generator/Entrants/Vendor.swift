//
//  Vendor.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum vendorCompanyEnum {
    case acme
    case orkin
    case fedex
    case nwElectrical
}

extension vendorCompanyEnum {
    var name: String {
        switch self {
        case .acme:
            return "Acme"
        case .orkin:
            return "Orkin"
        case .fedex:
            return "Fedex"
        case .nwElectrical:
            return "NW Electrical"
        }
    }
}

class Vendor: Entrant {
    let firstName: String
    let lastName: String
    let vendorCompany: String
    let dateOfBirth: Date
    let dateOfVisit: Date
    
    init(entrantType: EntrantsTypesEnum?,firstName: String, lastName: String, vendorCompany: String, dateOfBirth: Date, dateOfVisit: Date) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.vendorCompany = vendorCompany
        self.dateOfBirth = dateOfBirth
        self.dateOfVisit = dateOfVisit
        
        try super.init(entrantType: entrantType)
        
        guard !firstName.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        guard !lastName.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        guard !self.checkVendorCompany(company: vendorCompany).hasError else {
            let errorMessage = self.checkVendorCompany(company: vendorCompany).errorMessage
            throw EntrantErrors.nameError(reason: errorMessage!)
        }
    }
    
    func checkVendorCompany(company: String) -> (hasError: Bool, errorMessage: String?) {
        
        
        
        if company.isEmpty {
            let hasError = true
            let errorMessage = "Vendor Entrant must have a company"
            return(hasError, errorMessage)
        }
        return (false, nil)
    }
}














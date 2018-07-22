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

extension vendorCompanyEnum {
    var accessibleArea: [areaEnum] {
        switch self {
        case .acme:
            return [
                .kitchenAreas
            ]
        case .orkin:
            return [
                .amusementAreas,
                .rideControlAreas,
                .kitchenAreas
            ]
        case .fedex:
            return [
                .maintenanceAreas,
                .officeAreas
            ]
        case .nwElectrical:
            return [
                .amusementAreas,
                .rideControlAreas,
                .kitchenAreas,
                .maintenanceAreas,
                .officeAreas
            ]
        }
    }
}

struct Company {
    let companies: [vendorCompanyEnum] = [
        vendorCompanyEnum.acme,
        vendorCompanyEnum.fedex,
        vendorCompanyEnum.nwElectrical,
        vendorCompanyEnum.orkin
    ]
    
    func isCompanyExist(companyName: String) -> Bool {
        for company in companies {
            if companyName == company.name {
                return true
            }
        }
        return false
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
        let vendorCompanies = Company()
        var hasError = Bool()
        var errorMessage = String()
        
        if company.isEmpty {
            hasError = true
            errorMessage = "Vendor Entrant must have a company"
            return(hasError, errorMessage)
        } else if !vendorCompanies.isCompanyExist(companyName: company) {
            hasError = true
            errorMessage = "The choosen company does not exist in our files"
            return(hasError, errorMessage)
        }
        hasError = false
        return (hasError, errorMessage)
    }
}














//
//  manager.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 22/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum ManagerEntrantTypeEnum {
    case shiftManager
    case generalManager
    case seniorManager
}

extension ManagerEntrantTypeEnum {
    var name: String {
        switch self {
        case .shiftManager:
            return "Shift Manager"
        case .generalManager:
            return "General Manager"
        case .seniorManager:
            return "Senior Manager"
        }
    }
}

extension ManagerEntrantTypeEnum {
    var accessibleArea: [areaEnum] {
        switch self {
        default:
            return [
                areaEnum.amusementAreas,
                areaEnum.kitchenAreas,
                areaEnum.rideControlAreas,
                areaEnum.maintenanceAreas,
                areaEnum.officeAreas
            ]
        }
    }
}

extension ManagerEntrantTypeEnum {
    func canEntrantSkipRideLines() -> (isAbleToSkipLines: Bool, message: String) {
        let isAble = false
        let message = "Entrant cannot skip ride lines"
        return (isAble, message)
    }
}

extension ManagerEntrantTypeEnum {
    func getFoodDiscount() -> Double {
        return 0.25
    }
    
    func getMerchandiseDiscount() -> Double {
        return 0.25
    }
}

class Manager {
    let entrantType: EntrantsTypesEnum
    let managementTier: ManagerEntrantTypeEnum
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: String
    let socialSecurityNumber: String
    let dateOfBirth: String
    
    
    init(entrantType: EntrantsTypesEnum, managementTier: ManagerEntrantTypeEnum, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, socialSecurityNumber: String, dateOfBirth: String) throws {
        // Do some verifications
        guard !firstName.isEmpty else { throw EntrantErrors.nameError(reason: "First name is missing") }
        guard !lastName.isEmpty else { throw EntrantErrors.nameError(reason: "Last name is missing") }
        guard !streetAddress.isEmpty else { throw EntrantErrors.addressError(reason: "Street Address Field is missing") }
        guard !city.isEmpty else { throw EntrantErrors.addressError(reason: "City Field is missing") }
        
        // then initialize everything
        self.entrantType = entrantType
        self.managementTier = managementTier
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        self.socialSecurityNumber = socialSecurityNumber
        self.dateOfBirth = dateOfBirth
    }
}

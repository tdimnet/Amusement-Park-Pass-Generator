//
//  Employee.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class Employee: Entrant, birthDateProtocol {
    var dateOfBirth: Date?
    
    let socialSecurityNumber: String
    let firstName: String
    let lastName: String
    let streetAddress: String
    let city: String
    let state: String
    let zipCode: String
    
    init(entrantType: EntrantsTypesEnum?, dateOfBirth: Date?, socialSecurityNumber: String, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String) throws {
        guard !socialSecurityNumber.isEmpty else { throw EntrantErrors.entrantError(reason: "Social Security Number is missing") }
        guard !firstName.isEmpty else { throw EntrantErrors.nameError(reason: "First Name is missing") }
        guard !lastName.isEmpty else { throw EntrantErrors.nameError(reason: "Last Name is missing") }
        
        guard !streetAddress.isEmpty else { throw EntrantErrors.addressError(reason: "Street Address is missing") }
        guard !city.isEmpty else { throw EntrantErrors.addressError(reason: "City is missing") }
        guard !state.isEmpty else { throw EntrantErrors.addressError(reason: "State is missing") }
        guard !zipCode.isEmpty else { throw EntrantErrors.addressError(reason: "Zip code is missing") }
        
        self.dateOfBirth = dateOfBirth
        self.socialSecurityNumber = socialSecurityNumber
        self.firstName = firstName
        self.lastName = lastName
        self.streetAddress = streetAddress
        self.city = city
        self.state = state
        self.zipCode = zipCode
        try super.init(entrantType: entrantType)
        
        if let date = dateOfBirth, let entrantType = entrantType {
            if hasUserBirthDateError(dateOfBirth: date, entrantType: entrantType).hasError {
                let errorMessage = hasUserBirthDateError(dateOfBirth: date, entrantType: entrantType).errorMessage
                throw EntrantErrors.entrantError(reason: errorMessage!)
            }
        }
    }
    
    func hasUserBirthDateError(dateOfBirth: Date, entrantType: EntrantsTypesEnum) -> (hasError: Bool, errorMessage: String?) {
        let currentDate = Date()
        let currentTimestamp = Date().timeIntervalSince1970
        let yearInTimestamp: Double = 31556926
        let fiveYearsInTimestamp: Double = yearInTimestamp * 5
        let currentTimestampMinusFiveYear: Double = currentTimestamp - fiveYearsInTimestamp
        let currentDateMinusFiveYear = Date(timeIntervalSince1970: currentTimestampMinusFiveYear)
        
        if dateOfBirth > currentDate {
            let errorMessage = "DateOfBirth is bigger than current Date"
            let hasError = true
            return (hasError, errorMessage)
        }
        let hasError = false
        return (hasError, nil)
    }
}


enum projectNumberEnum {
    case projectNumber1001
    case projectNumber1002
    case projectNumber1003
    case projectNumber2001
    case projectNumber2002
}

extension projectNumberEnum {
    var name: String {
        switch self {
        case .projectNumber1001:
            return "1001"
        case .projectNumber1002:
            return "1002"
        case .projectNumber1003:
            return "1003"
        case .projectNumber2001:
            return "2001"
        case .projectNumber2002:
            return "2002"
        }
    }
}

struct ProjectNumber {
    let projects: [projectNumberEnum] = [
        projectNumberEnum.projectNumber1001,
        projectNumberEnum.projectNumber1002,
        projectNumberEnum.projectNumber1003,
        projectNumberEnum.projectNumber2001,
        projectNumberEnum.projectNumber2002,
    ]
    
    func isProjectNumberExist(projectNumberName: String) -> Bool {
        for project in projects {
            if projectNumberName == project.name {
                return true
            }
        }
        return false
    }
}

class ContractEmployee: Employee {
    let projectNumber: String
    
    init(entrantType: EntrantsTypesEnum?, dateOfBirth: Date?, socialSecurityNumber: String, firstName: String, lastName: String, streetAddress: String, city: String, state: String, zipCode: String, projectNumber: String) throws {
        guard !projectNumber.isEmpty else { throw EntrantErrors.entrantError(reason: "Project Number is missing") }
        
        self.projectNumber = projectNumber
        
        try super.init(entrantType: entrantType, dateOfBirth: dateOfBirth, socialSecurityNumber: socialSecurityNumber, firstName: firstName, lastName: lastName, streetAddress: streetAddress, city: city, state: state, zipCode: zipCode)
    }
}















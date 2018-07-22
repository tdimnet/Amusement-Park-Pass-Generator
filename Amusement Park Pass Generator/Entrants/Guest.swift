//
//  Guest.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum GuestEntrantTypeEnum {
    case freeChildGuest
    case classicGuest
    case seniorGuest
    case vipGuest
    case seasonPassGuest
}

extension GuestEntrantTypeEnum {
    var name: String {
        switch self {
        case .freeChildGuest:
            return "Child"
        case .classicGuest:
            return "Adult"
        case .seniorGuest:
            return "Senior"
        case .vipGuest:
            return "VIP"
        case .seasonPassGuest:
            return "Season Pass Guest"
        }
    }
}

extension GuestEntrantTypeEnum {
    func canEntrantSkipRideLines() -> (isAbleToSkipLines: Bool, message: String) {
        switch self {
        case .vipGuest, .seasonPassGuest, .seniorGuest:
            let isAble = true
            let message = "Entrant is able to skip ride lines"
            return (isAble, message)
        default:
            let isAble = false
            let message = "Entrant cannot skip ride lines"
            return (isAble, message)
        }
    }
}

extension GuestEntrantTypeEnum {
    func getFoodDiscount() -> Double {
        switch self {
        case .vipGuest:
            return 0.10
        default:
            return 0.00
        }
    }
    
    func getMerchandiseDiscount() -> Double {
        switch self {
        case .vipGuest:
            return 0.20
        default:
            return 0.00
        }
    }
}

class Guest: Entrant, birthDateProtocol {
    var dateOfBirth: Date?
    
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: Int?
    
    init(entrantType: EntrantsTypesEnum?, dateOfBirth: Date?, firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?) throws {
        
        self.dateOfBirth = dateOfBirth
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
        } else if currentDateMinusFiveYear > dateOfBirth && entrantType.rawValue == EntrantsTypesEnum.freeChildGuest.rawValue {
            let errorMessage = "Date of Birth is bigger than 5 years test"
            let hasError = true
            return (hasError, errorMessage)
        }
        let hasError = false
        return (hasError, nil)
    }
}

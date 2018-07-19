//
//  Errors.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum EntrantErrors: Error {
    case entrantError(reason: String)
    case nameError(reason: String)
    case addressError(reason: String)
}

// There is a polymorphic code for this protocol (implemented in both Guest and Employee)
protocol birthDateProtocol {
    var dateOfBirth: Date? { get set }
    
    func hasUserBirthDateError(dateOfBirth: Date, entrantType: EntrantsTypesEnum) -> (hasError: Bool, errorMessage: String?)
}

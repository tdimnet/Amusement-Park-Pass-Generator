//
//  GuestTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 15/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation
class GuestTests {
    // Guest should have an entrant type
    static func isEmployeeEntrantTypeMissing() {
        do {
            let guest = try Guest(entrantType: nil, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("ENTRANT GUEST TEST: OK: The guest has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT GUEST TEST: An error occurs! Guest should have an entrant type!")
        }
    }
}

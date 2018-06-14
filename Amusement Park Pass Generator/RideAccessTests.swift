//
//  RideAccessTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 14/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class RideAccessTests {
    static func isAllowedToSkipAllRideLines() {
        do {
            let vipGuest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
        } catch let error {
            print(error)
        }
    }
}

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
    static func isGuestEntrantTypeMissing() {
        do {
            let guest = try Guest(entrantType: nil, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("ENTRANT GUEST TEST: OK: The guest has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT GUEST TEST: An error occurs! Guest should have an entrant type!")
        }
    }
    
    static func isGuestEntrantNeedRequiredInfo() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("ENTRANT GUEST TEST: OK: The guest has the required info")
        } catch let error {
            print(error)
            print("ENTRANT GUEST TEST: OK: The guest does not have the required info")
        }
    }
    
    static func shouldFreeChildGuestNotHaveBirthDateError() {
        do {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd"
            let guestDateOfBirth = formatter.date(from: "2014/02/02")
            let guest = try Guest(entrantType: .freeChildGuest, dateOfBirth: guestDateOfBirth, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("ENTRANT GUEST TEST: OK: The Free Child Guest information are correct")
        } catch let error {
            print(error)
            print("ENTRANT GUEST TEST: ERROR: The Free Child Guest information are correct")
        }
    }
    
//    static func shouldFreeChildGuestHaveBirthDateError() {
//        do {
//            let formatter = DateFormatter()
//            formatter.dateFormat = "yyyy/MM/dd"
//            let guestDateOfBirth = formatter.date(from: "2010/02/02")
//            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: guestDateOfBirth, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
//            print("ENTRANT GUEST TEST: OK: The Free Child Guest information are correct")
//        } catch let error {
//            print(error)
//            print("ENTRANT GUEST TEST: ERROR: The Free Child Guest is too old")
//        }
//    }
//
//    static func shouldClassicGuestHaveBirthDateError() {
//        do {
//            let formatter = DateFormatter()
//            formatter.dateFormat = "yyyy/MM/dd"
//            let guestDateOfBirth = formatter.date(from: "2010/02/02")
//            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: guestDateOfBirth, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
//            print("ENTRANT GUEST TEST: OK: The Classic Guest information are correct")
//        } catch let error {
//            print(error)
//            print("ENTRANT GUEST TEST: ERROR: The Classic Guest information are not correct")
//        }
//    }
}

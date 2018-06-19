//
//  RideAccessTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 18/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class RideLinesTests {
    static func isClassicUserCanSkipRideLines() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("RIDE LINES TEST: A Classic Guest wants to skip ride lines")
            print(guest.canEntrantSkipRideLines(entrant: guest).message)
        } catch let error {
            print(error)
        }
    }
    
    static func isVipUserCanSkipRideLines() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            print("RIDE LINES TEST: A VIP Guest wants to skip ride lines")
            print(guest.canEntrantSkipRideLines(entrant: guest).message)
        } catch let error {
            print(error)
        }
    }
    
    static func isFoodServiceEmployeeCanSkipRideLines() {
        do {
            let employe = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: 12345)
            print("RIDE LINES TEST: A Food Service Employee wants to skip ride lines")
            print(employe.canEntrantSkipRideLines(entrant: employe).message)
        } catch let error {
            print(error)
        }
    }
    
    static func isManagerEmployeeCanSkipRideLines() {
        do {
            let employe = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: 12345)
            print("RIDE LINES TEST: A Manager Employee wants to skip ride lines")
            print(employe.canEntrantSkipRideLines(entrant: employe).message)
        } catch let error {
            print(error)
        }
    }
}

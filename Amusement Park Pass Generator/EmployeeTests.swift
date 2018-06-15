//
//  Tests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 14/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class EmployeeTests {
    // Employee should have an entrant type
    static func isEmployeeEntrantTypeMissing() {
        do {
            let employe = try Employee(entrantType: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: 12345)
            print("ENTRANT EMPLOYEE TEST: OK: The employe has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT EMPLOYEE TEST: An error occurs! Employee should have an entrant type!")
        }
    }
    
    // Employee should have a firstName
    static func isEmployeFirstNameMissing() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, firstName: nil, lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            print("ENTRANT EMPLOYEE TEST: OK: The employe has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT EMPLOYEE TEST: An error occurs! Employee should have a first name!")
        }
    }
    
    // Employee should have an address
    static func isEmployeeAddressMissing() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, firstName: "John", lastName: "Smith", streetAddress: nil, city: "Portland", state: "Oregon", zipCode: 12345)
            print("ENTRANT EMPLOYEE TEST: OK: The employe has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT EMPLOYEE TEST: An error occurs! Employee should have a street address!")
        }
    }
    
    // Employee should have a state
    static func isEmployeeStateMissing() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: nil, zipCode: 12345)
            print("ENTRANT EMPLOYEE TEST: OK: The employe has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT EMPLOYEE TEST: An error occurs! Employee should have a state!")
        }
    }
    
    // Employee should have a zipcode
    static func isEmployeeZipcodeMissing() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: nil)
            print("ENTRANT EMPLOYEE TEST: OK: The employe has all the information needed")
        } catch let error {
            print(error)
            print("ENTRANT EMPLOYEE TEST: An error occurs! Employee should have a Zip Code!")
        }
    }
}

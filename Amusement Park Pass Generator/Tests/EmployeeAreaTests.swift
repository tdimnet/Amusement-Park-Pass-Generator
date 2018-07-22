//
//  EmployeeAreaTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 18/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

/*
class EmployeeAreaTest {
    
    // Food Service Employees should be able to access Amusement Areas
    static func isFoodServiceEmployeeInAmusementAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Amusement area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Food Service Employees should be able to access Kitchen Areas
    static func isFoodServiceEmployeeInKitchenAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Kitchen area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Food Service Employees should not be able to access Ride Control Areas
    static func isFoodServiceEmployeeInRideAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Ride Control area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Ride Service Employees should be able to access Ride Control Areas
    static func isRideServiceEmployeeInRideAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .rideServicesEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Ride Service Employee wants to access a Ride Control area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Ride Service Employees should be able to access Kitchen Control Areas
    static func isRideServiceEmployeeInKitchenAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .rideServicesEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A Ride Service Employee wants to access a Kitchen Control area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Maintenance Employees should not be able to access Office Areas
    static func isMaintenanceEmployeeInOfficeAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .maintenanceEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A Maintenance Employee wants to access an Office area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Manager Employees should be able to access Office Areas
    static func isManagerEmployeeInOfficeAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A Manager Employee wants to access an Office area")
            print(area.employeeSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Manager Employees should be able to access Maintenance Areas
    static func isManagerEmployeeInMaintenanceAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, socialSecurityNumber: "721-07-4426", firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: "12345")
            var pass = EmployeePass(entrant: employee)
            
            let area = Area(area: .maintenanceAreas)
            
            print("AREA TEST: A Manager Employee wants to access an Maintenance area")
            print(area.employeeSwipePass(fromPass: &pass))
            print("SWIPPING TWICE TEST: Test of Swipping")
            print(area.employeeSwipePass(fromPass: &pass))
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                print("WITH DELAI")
                print("SWIPPING TWICE TEST: Test of Swipping with delays")
                print(area.employeeSwipePass(fromPass: &pass))
            }
            
        } catch let error {
            print(error)
        }
    }
}
*/

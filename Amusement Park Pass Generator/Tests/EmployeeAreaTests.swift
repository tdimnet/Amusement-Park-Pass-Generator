//
//  EmployeeAreaTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 18/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class EmployeeAreaTest {
    static func isFoodServiceEmployeeInAmusementAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Amusement area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isFoodServiceEmployeeInKitchenAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Kitchen area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isFoodServiceEmployeeInRideAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Ride Control area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isRideServiceEmployeeInRideAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .rideServicesEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Ride Service Employee wants to access a Ride Control area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isRideServiceEmployeeInKitchenAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .rideServicesEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A Ride Service Employee wants to access a Kitchen Control area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isMaintenanceEmployeeInOfficeAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .maintenanceEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A Maintenance Employee wants to access an Office area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isManagerEmployeeInOfficeAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A Manager Employee wants to access an Office area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isManagerEmployeeInMaintenanceAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .maintenanceAreas)
            
            print("AREA TEST: A Manager Employee wants to access an Maintenance area")
            print(area.swipePass(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
}

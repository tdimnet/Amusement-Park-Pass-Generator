//
//  AreaTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 15/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class GuestAreaTests {
    // Classic Guest should be able to access Amusement Areas
    static func isEntrantClassicGuestInAmusementAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestAccess = guest.entrantType.accessLevel
            
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A classic guest wants to access an amusement area")
            print(area.isEntrantAllowed(with: guestAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantVIPGuestInKitchenAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestAccess = guest.entrantType.accessLevel
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A vip guest wants to access a kitchen area")
            print(area.isEntrantAllowed(with: guestAccess))
            
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantFreeChildGuestInRideControllAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .freeChildGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestAccess = guest.entrantType.accessLevel
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Free Child guest wants to access a Ride Controll area")
            print(area.isEntrantAllowed(with: guestAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantClassicGuestInMaintenanceAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestAccess = guest.entrantType.accessLevel
            let area = Area(area: .maintenanceAreas)
            
            print("AREA TEST: A Classic guest wants to access a Ride Maintenance area")
            print(area.isEntrantAllowed(with: guestAccess))
        } catch let error {
            print(error)
        }
    }
    
    static func isVIPGuestInOfficeAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestAccess = guest.entrantType.accessLevel
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A VIP guest wants to access a Ride Maintenance area")
            print(area.isEntrantAllowed(with: guestAccess))
        } catch let error {
            print(error)
        }
    }
}

class EmployeeAreaTest {
    static func isFoodServiceEmployeeInAreasAllowed() {
        do {
            let employee = try Employee(entrantType: .foodServicesEmployee, firstName: "John", lastName: "Smith", streetAddress: "123, baker street", city: "Portland", state: "Oregon", zipCode: 12345)
            let employeeAccess = employee.entrantType.accessLevel
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A Food Service Employee wants to access a Amusement area")
            print(area.isEntrantAllowed(with: employeeAccess))
        } catch let error {
            print(error)
        }
    }
}

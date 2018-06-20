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
            let pass = Pass(entrant: guest)
            let passAccessLevel = pass.entrant.entrantType.accessLevel
            
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A classic guest wants to access an amusement area")
            print(area.swipePass(with: passAccessLevel))
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantVIPGuestInKitchenAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass = Pass(entrant: guest)
            let passAccessLevel = pass.entrant.entrantType.accessLevel
            
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A vip guest wants to access a kitchen area")
            print(area.swipePass(with: passAccessLevel))
            
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantFreeChildGuestInRideControllAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .freeChildGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass = Pass(entrant: guest)
            let passAccessLevel = pass.entrant.entrantType.accessLevel
            
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Free Child guest wants to access a Ride Controll area")
            print(area.swipePass(with: passAccessLevel))
        } catch let error {
            print(error)
        }
    }
    
    static func isEntrantClassicGuestInMaintenanceAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass = Pass(entrant: guest)
            let passAccessLevel = pass.entrant.entrantType.accessLevel
            
            let area = Area(area: .maintenanceAreas)
            
            print("AREA TEST: A Classic guest wants to access a Ride Maintenance area")
            print(area.swipePass(with: passAccessLevel))
        } catch let error {
            print(error)
        }
    }
    
    static func isVIPGuestInOfficeAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass = Pass(entrant: guest)
            let passAccessLevel = pass.entrant.entrantType.accessLevel
            
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A VIP guest wants to access a Ride Maintenance area")
            print(area.swipePass(with: passAccessLevel))
        } catch let error {
            print(error)
        }
    }
    
    static func hasClassicGuestBirthDateMessage() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: Date(), firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let area = AmusementArea(area: .amusementAreas)
            
            print("AREA TEST: A Classic guest wants to access a Amusement area and it is his birthday")
            print(area.swipePass(with: guest))
        } catch let error {
            print(error)
        }
    }
    
    static func hasClassicGuestNoBirthDateMessage() {
        do {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd"
            let guestDateOfBirth = formatter.date(from: "2010/02/02")
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: guestDateOfBirth, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let area = AmusementArea(area: .amusementAreas)
            
            print("AREA TEST: A Classic guest wants to access a Amusement area and it is not his birthday")
            print(area.swipePass(with: guest))
        } catch let error {
            print(error)
        }
    }
}

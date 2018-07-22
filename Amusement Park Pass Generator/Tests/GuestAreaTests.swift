//
//  AreaTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 15/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation
/*
class GuestAreaTests {
    
    // Guest should be able to access Amusement Areas
    static func isEntrantClassicGuestInAmusementAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = Area(area: .amusementAreas)
            
            print("AREA TEST: A classic guest wants to access an amusement area")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Guest should not be able to access Kitchen Areas
    static func isEntrantVIPGuestInKitchenAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = Area(area: .kitchenAreas)
            
            print("AREA TEST: A vip guest wants to access a kitchen area")
            print(area.guestSwipePass(fromPass: &pass))
            
        } catch let error {
            print(error)
        }
    }
    
    // Guest should not be able to access Ride Controll Areas
    static func isEntrantFreeChildGuestInRideControllAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .freeChildGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = Area(area: .rideControlAreas)
            
            print("AREA TEST: A Free Child guest wants to access a Ride Controll area")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Guest should not be able to access Ride Maintenance Areas
    static func isEntrantClassicGuestInMaintenanceAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = Area(area: .maintenanceAreas)
            
            print("AREA TEST: A Classic guest wants to access a Ride Maintenance area")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Guest should not be able to access Office Areas
    static func isVIPGuestInOfficeAreasAllowed() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = Area(area: .officheAreas)
            
            print("AREA TEST: A VIP guest wants to access an Office area")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Guest should have Personnal Messages for their birthday in Amusement Areas
    static func hasClassicGuestBirthDateMessage() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: Date(), firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = AmusementArea(area: .amusementAreas)
            
            print("AREA TEST: A Classic guest wants to access a Amusement area and it is his birthday")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
    
    // Guest should not have Personnal Messages in Amusement Areas if it is not their birthday
    static func hasClassicGuestNoBirthDateMessage() {
        do {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd"
            let guestDateOfBirth = formatter.date(from: "2010/02/02")
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: guestDateOfBirth, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            var pass = GuestPass(entrant: guest)
            
            let area = AmusementArea(area: .amusementAreas)
            
            print("AREA TEST: A Classic guest wants to access a Amusement area and it is not his birthday")
            print(area.guestSwipePass(fromPass: &pass))
        } catch let error {
            print(error)
        }
    }
}
 */

//
//  RideAccessTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 18/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class RideAccessTests {
    static func isClassicGuestCanSkipRideAccessLines() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestRideAccessLevel = guest.entrantType.rideAccessLevel
            let rideAccess = RideAccess()
            
            print("RIDE ACCESS TEST: A Classic Guest to access a ride")
            print(rideAccess.canUserSkipAreaAccessLines(with: guestRideAccessLevel, and: RideAccessActionsEnum.accessAllRides.rawValue))
            
            print("RIDE ACCESS TEST: A Classic Guest wants skip rides lines")
            print(rideAccess.canUserSkipAreaAccessLines(with: guestRideAccessLevel, and: RideAccessActionsEnum.skipAllRideLines.rawValue))
            
        } catch let error {
            print(error)
        }
    }
    
    static func isVipGuestCanSkipRideAccessLines() {
        do {
            let guest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let guestRideAccessLevel = guest.entrantType.rideAccessLevel
            let rideAccess = RideAccess()
            
            print("RIDE ACCESS TEST: A VIP Guest to access a ride")
            print(rideAccess.canUserSkipAreaAccessLines(with: guestRideAccessLevel, and: RideAccessActionsEnum.accessAllRides.rawValue))
            
            print("RIDE ACCESS TEST: A VIP Guest wants skip rides lines")
            print(rideAccess.canUserSkipAreaAccessLines(with: guestRideAccessLevel, and: RideAccessActionsEnum.skipAllRideLines.rawValue))
            
        } catch let error {
            print(error)
        }
    }
}

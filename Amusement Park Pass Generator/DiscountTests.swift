//
//  DiscountTests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 14/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation
class DiscountTests {
    
    // Classic Guest -> Classic Guest does not have any discouts
    static func isClassicGuestHasDiscount() {
        do {
            let guest = try Guest(entrantType: .classicGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            if guest.getFoodDiscount() == 0.0 && guest.getMerchandiseDiscount() == 0 {
                print("DISCOUNT TEST: OK: Classic Guest has no discount!")
            } else {
                print("DISCOUNT TEST: An error occurs! Classic Guest should have not discount!")
            }
        } catch let error {
            print(error)
        }
    }
    
    // VIP Guest -> VIP Guest has 10% discount on Food and 20% discount on Merchandise
    static func isVIPGuestHasDiscount() {
        do {
            let vipGuest = try Guest(entrantType: .vipGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            if vipGuest.getFoodDiscount() == 0.1 && vipGuest.getMerchandiseDiscount() == 0.2 {
                print("DISCOUNT TEST: OK: VIP Guest has 10% discount on Food and 20% discount on Merchandise!")
            } else {
                print("DISCOUNT TEST: An error occurs! VIP Guest discount are not correct!")
            }
        } catch let error {
            print(error)
        }
    }
}

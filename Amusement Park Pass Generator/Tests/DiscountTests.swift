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
    
    // Free Child Guest -> Free Child Guest does not have any discouts
    static func isFreeChildGuestHasDiscount() {
        do {
            let freeChildGuest = try Guest(entrantType: .freeChildGuest, dateOfBirth: nil, firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            if freeChildGuest.getFoodDiscount() == 0.0 && freeChildGuest.getMerchandiseDiscount() == 0.0 {
                print("DISCOUNT TEST: OK: Free Child Guest has no discount!")
            } else {
                print("DISCOUNT TEST: An error occurs! Free Child Guest should have not discount!")
            }
        } catch let error {
            print(error)
        }
    }
    
    // Food Service Employee -> Food Service Employee has 15% discount on Food and 25% discount on Merchandise
    static func isFoodServiceEmployeeHasDiscount() {
        do {
            let foodServiceEmploye = try Employee(entrantType: .foodServicesEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: "12345")
            if foodServiceEmploye.getFoodDiscount() == 0.15 && foodServiceEmploye.getMerchandiseDiscount() == 0.25 {
                print("DISCOUNT TEST: OK: Food Service Employee has 15% discount on Food and 25% discount on Merchandise!")
            } else {
                print("DISCOUNT TEST: An error occurs! Food Service Employee discount are not correct!")
            }
        } catch let error {
            print(error)
        }
    }
    
    // Ride Service Employee -> Ride Service Employee has 15% discount on Food and 25% discount on Merchandise
    static func isRideServiceEmployeeHasDiscount() {
        do {
            let rideServiceEmploye = try Employee(entrantType: .rideServicesEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: "12345")
            if rideServiceEmploye.getFoodDiscount() == 0.15 && rideServiceEmploye.getMerchandiseDiscount() == 0.25 {
                print("DISCOUNT TEST: OK: Ride Service Employee has 15% discount on Food and 25% discount on Merchandise!")
            } else {
                print("DISCOUNT TEST: An error occurs! Ride Service Employee discount are not correct!")
            }
        } catch let error {
            print(error)
        }
    }
    
    // Maintenance Service Employee -> Maintenance Service Employee has 15% discount on Food and 25% discount on Merchandise
    static func isMaintenanceServiceEmployeeHasDiscount() {
        do {
            let maintenanceServiceEmploye = try Employee(entrantType: .maintenanceEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: "12345")
            if maintenanceServiceEmploye.getFoodDiscount() == 0.15 && maintenanceServiceEmploye.getMerchandiseDiscount() == 0.25 {
                print("DISCOUNT TEST: OK: Maintenance Service Employee has 15% discount on Food and 25% discount on Merchandise!")
            } else {
                print("DISCOUNT TEST: An error occurs! Maintenance Service Employee discount are not correct!")
            }
        } catch let error {
            print(error)
        }
    }
    
    // Manager Employee -> Manager Employee has 25% discount on Food and 25% discount on Merchandise
    static func isManagerEmployeeHasDiscount() {
        do {
            let managerEmploye = try Employee(entrantType: .managerEmployee, dateOfBirth: nil, firstName: "firstName", lastName: "lastName", streetAddress: "streetAddress", city: "city", state: "state", zipCode: "12345")
            if managerEmploye.getFoodDiscount() == 0.25 && managerEmploye.getMerchandiseDiscount() == 0.25 {
                print("DISCOUNT TEST: OK: Manager Employee has 25% discount on Food and 25% discount on Merchandise!")
            } else {
                print("DISCOUNT TEST: An error occurs! Manager Employee discount are not correct!")
            }
        } catch let error {
            print(error)
        }
    }
}

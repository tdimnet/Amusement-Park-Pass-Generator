//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Discount Tests
        print("DISCOUNT TEST")
            // Guest
        DiscountTests.isClassicGuestHasDiscount()
        DiscountTests.isVIPGuestHasDiscount()
        DiscountTests.isFreeChildGuestHasDiscount()
        
            // Employee
        DiscountTests.isFoodServiceEmployeeHasDiscount()
        DiscountTests.isRideServiceEmployeeHasDiscount()
        DiscountTests.isMaintenanceServiceEmployeeHasDiscount()
        DiscountTests.isManagerEmployeeHasDiscount()
        
        print("\n")
        
        // Guest Tests
        print("GUEST TESTS")
        GuestTests.isGuestEntrantTypeMissing()
        GuestTests.isGuestEntrantNeedRequiredInfo()
        GuestTests.shouldFreeChildGuestNotHaveBirthDateError()
//        GuestTests.shouldFreeChildGuestHaveBirthDateError()
//        GuestTests.shouldClassicGuestHaveBirthDateError()
        
        print("\n")
        
        // Employee Tests
        print("EMPLOYEE TESTS")
        EmployeeTests.isEmployeeEntrantTypeMissing()
        EmployeeTests.isEmployeFirstNameMissing()
        EmployeeTests.isEmployeeAddressMissing()
        EmployeeTests.isEmployeeStateMissing()
        EmployeeTests.isEmployeeZipcodeMissing()
        
        print("\n")
        
        // Guest Area Tests
        print("GUEST AREA TESTS")
        GuestAreaTests.isEntrantClassicGuestInAmusementAreasAllowed()
        GuestAreaTests.isEntrantVIPGuestInKitchenAreasAllowed()
        GuestAreaTests.isEntrantFreeChildGuestInRideControllAreasAllowed()
        GuestAreaTests.isEntrantClassicGuestInMaintenanceAreasAllowed()
        GuestAreaTests.isVIPGuestInOfficeAreasAllowed()
        
        print("\n")
        
        // Employee Area Tests
        print("EMPLOYEE AREA TESTS")
        EmployeeAreaTest.isFoodServiceEmployeeInAmusementAreasAllowed()
        EmployeeAreaTest.isFoodServiceEmployeeInKitchenAreasAllowed()
        EmployeeAreaTest.isFoodServiceEmployeeInRideAreasAllowed()
        EmployeeAreaTest.isRideServiceEmployeeInKitchenAreasAllowed()
        EmployeeAreaTest.isRideServiceEmployeeInRideAreasAllowed()
        EmployeeAreaTest.isMaintenanceEmployeeInOfficeAreasAllowed()
        EmployeeAreaTest.isManagerEmployeeInOfficeAreasAllowed()
        EmployeeAreaTest.isManagerEmployeeInMaintenanceAreasAllowed()
        
        print("\n")
        
        // Ride Access Tests
        print("Ride Access")
        RideAccessTests.isClassicGuestCanSkipRideAccessLines()
        RideAccessTests.isVipGuestCanSkipRideAccessLines()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


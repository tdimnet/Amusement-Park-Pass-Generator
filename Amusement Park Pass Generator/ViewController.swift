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
            // Guest
        DiscountTests.isClassicGuestHasDiscount()
        DiscountTests.isVIPGuestHasDiscount()
        DiscountTests.isFreeChildGuestHasDiscount()
        
            // Employee
        DiscountTests.isFoodServiceEmployeeHasDiscount()
        DiscountTests.isRideServiceEmployeeHasDiscount()
        DiscountTests.isMaintenanceServiceEmployeeHasDiscount()
        DiscountTests.isManagerEmployeeHasDiscount()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


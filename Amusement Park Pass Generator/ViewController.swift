//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let Thomas: Guest = Guest(entrantType: .classicGuest)
    let Tony = Employee(entrantType: .managerEmployee, firstName: "Tony", lastName: "Malcom", streetAddress: "123 Bacon Street", city: "Portland", state: "Oregon", zipCode: 94350)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Guest = \(Thomas.entrantType.rawValue)\n")
        print("Employee = \(Tony.entrantType.rawValue)\n")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


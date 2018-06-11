//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Guests
    let Tony: Guest = Guest(entrantType: .classicGuest)
    let Hasley: Guest = Guest(entrantType: .vipGuest)
    
    // Employees
    let Myriam: Employee = Employee(entrantType: .foodServicesEmployee, firstName: "Myriam", lastName: "El Khomri", streetAddress: "4, Boulevard du Pape", city: "Paris", state: "FR", zipCode: 75006)
    let Mark: Employee = Employee(entrantType: .maintenanceEmployee, firstName: "Mark", lastName: "Manson", streetAddress: "FooBar Street", city: "Foo", state: "Bar", zipCode: 34245)
    let Jordan: Employee = Employee(entrantType: .managerEmployee, firstName: "Jordan", lastName: "Servan", streetAddress: "83, boulevard Charles de Gaule", city: "Sannois", state: "FR", zipCode: 95110)
    
    // Areas
    let FantasyKitchen: Area = Area(area: .rideControlAreas)
    let FantasyWorldMaintenance: Area = Area(area: .maintenanceAreas)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


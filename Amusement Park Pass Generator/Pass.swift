//
//  Pass.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 20/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

protocol Pass {
    var swipeTime: Date? { get set }
}

struct GuestPass: Pass {
    let entrant: Guest
    var swipeTime: Date? = nil
    
    init(entrant: Guest) {
        self.entrant = entrant
    }
}

struct EmployeePass: Pass {
    let entrant: Employee
    var swipeTime: Date? = nil
    
    init(entrant: Employee) {
        self.entrant = entrant
    }
}

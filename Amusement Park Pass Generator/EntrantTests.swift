//
//  Tests.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 14/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

class Test {
    static func testEmployeeMissingInfo() -> Void {
        do {
            try Employee(entrantType: nil, firstName: "Tony", lastName: "German", streetAddress: "123, Nice Street", city: "Porteland", state: "Oregon", zipCode: 93234)
        } catch let error {
            print(error)
        }
    }
    
    static func testChildFreeGuestDateOfBirthError() {
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        let someDate = formatter.date(from: "2022/10/08")
        
        if currentDate > someDate! {
            print("foo")
        } else {
            print("bar")
        }
        
        print(currentDate)
        print(someDate)
    }
    
    
}

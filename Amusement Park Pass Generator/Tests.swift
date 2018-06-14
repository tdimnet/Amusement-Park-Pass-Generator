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
            let Tony = try Employee(entrantType: .maintenanceEmployee, firstName: "Tony", lastName: "German", streetAddress: "123, Nice Street", city: "Porteland", state: "Oregon", zipCode: 93234)
        } catch let error {
            print(error)
        }
    }
}

//
//  manager.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 22/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum ManagerEntrantTypeEnum {
    case shiftManager
    case generalManager
    case seniorManager
}

extension ManagerEntrantTypeEnum {
    var name: String {
        switch self {
        case .shiftManager:
            return "Shift Manager"
        case .generalManager:
            return "General Manager"
        case .seniorManager:
            return "Senior Manager"
        }
    }
}

extension ManagerEntrantTypeEnum {
    func canEntrantSkipRideLines() -> (isAbleToSkipLines: Bool, message: String) {
        let isAble = false
        let message = "Entrant cannot skip ride lines"
        return (isAble, message)
    }
}

extension ManagerEntrantTypeEnum {
    func getFoodDiscount() -> Double {
        return 0.25
    }
    
    func getMerchandiseDiscount() -> Double {
        return 0.25
    }
}

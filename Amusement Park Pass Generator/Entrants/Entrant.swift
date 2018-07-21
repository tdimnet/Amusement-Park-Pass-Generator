//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum EntrantsTypesEnum: String {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case foodServicesEmployee
    case rideServicesEmployee
    case maintenanceEmployee
    case managerEmployee
    case contractEmployee
    case vendor
}

extension EntrantsTypesEnum {
    var name: String {
        switch self {
        case .classicGuest:
            return "Classic Guest"
        case .vipGuest:
            return "VIP Guest"
        case .freeChildGuest:
            return "Free Child Guest"
        case .foodServicesEmployee:
            return "Hourly Employee - Food Services"
        case .rideServicesEmployee:
            return "Hourly Employee - Ride Services"
        case .maintenanceEmployee:
            return "Hourly Employee - Maintenance"
        case .managerEmployee:
            return "Manager"
        case .contractEmployee:
            return "Contract Employee"
        case .vendor:
            return "Vendor"
        }
    }
}

extension EntrantsTypesEnum {
    var accessLevel: Int {
        switch self {
        case .classicGuest, .vipGuest, .freeChildGuest:
            return 1
        case .foodServicesEmployee:
            return 2
        case .rideServicesEmployee:
            return 3
        case .maintenanceEmployee:
            return 4
        case .managerEmployee:
            return 5
        case .contractEmployee:
            return 6
        case .vendor:
            return 7
        }
    }
}

extension EntrantsTypesEnum {
    func canEntrantSkipRideLines() -> (isAbleToSkipLines: Bool, message: String) {
        switch self {
        case .vipGuest:
            let isAble = true
            let message = "Entrant is able to skip ride lines"
            return (isAble, message)
        default:
            let isAble = false
            let message = "Entrant cannot skip ride lines"
            return (isAble, message)
        }
    }
}

extension EntrantsTypesEnum {
    func getFoodDiscount() -> Double {
        switch self {
        case .vipGuest:
            return 0.10
        case .foodServicesEmployee, .rideServicesEmployee, .maintenanceEmployee:
            return 0.15
        case .managerEmployee:
            return 0.25
        default:
            return 0.00
        }
    }
    
    func getMerchandiseDiscount() -> Double {
        switch self {
        case .vipGuest:
            return 0.20
        case .foodServicesEmployee, .rideServicesEmployee, .maintenanceEmployee, .managerEmployee:
            return 0.25
        default:
            return 0.00
        }
    }
}

protocol EntrantProtocol {
    var entrantType: EntrantsTypesEnum { get }
    
    func getFoodDiscount() -> Double
    func getMerchandiseDiscount() -> Double
}

class Entrant: EntrantProtocol {
    let entrantType: EntrantsTypesEnum

    init(entrantType: EntrantsTypesEnum?) throws {
        guard let entrantType = entrantType else { throw EntrantErrors.entrantError(reason: "Entrant Type is missing") }
        self.entrantType = entrantType
    }

    func getFoodDiscount() -> Double {
        return entrantType.getFoodDiscount()
    }

    func getMerchandiseDiscount() -> Double {
        return entrantType.getMerchandiseDiscount()
    }
    
    func canEntrantSkipRideLines(entrant: Entrant) -> (isAbleToSkipLines: Bool, message: String) {
        return entrant.entrantType.canEntrantSkipRideLines()
    }
}

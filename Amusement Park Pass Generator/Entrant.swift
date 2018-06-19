//
//  Entrant.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

// MARK: Entrant
enum EntrantsTypesEnum: String {
    case classicGuest
    case vipGuest
    case freeChildGuest
    case foodServicesEmployee
    case rideServicesEmployee
    case maintenanceEmployee
    case managerEmployee
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
        }
    }
}

extension EntrantsTypesEnum {
    var accessLevel: Int {
        switch self {
        case .classicGuest, .vipGuest, .freeChildGuest:
            return 1
        case .foodServicesEmployee:
            return 3
        case .rideServicesEmployee:
            return 4
        case .maintenanceEmployee:
            return 10
        case .managerEmployee:
            return 15
        }
    }
}

extension EntrantsTypesEnum {
    var rideAccessLevel: Int {
        switch self {
        case .vipGuest:
            return 2
        default:
            return 1
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
}

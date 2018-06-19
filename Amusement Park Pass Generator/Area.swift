//
//  Area.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 19/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

// MARK: Area
enum AreasEnum {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
    case officheAreas
}

extension AreasEnum {
    var name: String {
        switch self {
        case .amusementAreas:
            return "Amusement Areas"
        case .kitchenAreas:
            return "Kitchen Areas"
        case .rideControlAreas:
            return "Ride Control Areas"
        case .maintenanceAreas:
            return "Maintenance Areas"
        case .officheAreas:
            return "Office Areas"
        }
    }
}

extension AreasEnum {
    var accessLevel: Int {
        switch self {
        case .amusementAreas:
            return 1
        case .kitchenAreas:
            return 3
        case .rideControlAreas:
            return 4
        case .maintenanceAreas:
            return 6
        case .officheAreas:
            return 15
        }
    }
}

class Area {
    var area: AreasEnum
    
    init(area: AreasEnum) {
        self.area = area
    }
    
    // FIXME: Will need to throw an error later!
    func swipePass(with entrantAccessLevel: Int) -> String {
        if entrantAccessLevel == EntrantsTypesEnum.rideServicesEmployee.accessLevel && area.accessLevel == AreasEnum.kitchenAreas.accessLevel {
            return "Access not allowed"
        } else if entrantAccessLevel >= area.accessLevel {
            return "Access Granted"
        }
        return "Access not allowed"
    }
}

class AmusementArea: Area {
    override init(area: AreasEnum) {
        super.init(area: area)
    }
}

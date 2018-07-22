//
//  Project.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 22/07/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

enum projectNumberEnum {
    case projectNumber1001
    case projectNumber1002
    case projectNumber1003
    case projectNumber2001
    case projectNumber2002
}

extension projectNumberEnum {
    var name: String {
        switch self {
        case .projectNumber1001:
            return "1001"
        case .projectNumber1002:
            return "1002"
        case .projectNumber1003:
            return "1003"
        case .projectNumber2001:
            return "2001"
        case .projectNumber2002:
            return "2002"
        }
    }
}

struct ProjectNumber {
    let projects: [projectNumberEnum] = [
        projectNumberEnum.projectNumber1001,
        projectNumberEnum.projectNumber1002,
        projectNumberEnum.projectNumber1003,
        projectNumberEnum.projectNumber2001,
        projectNumberEnum.projectNumber2002,
        ]
    
    func isProjectNumberExist(projectNumberName: String) -> Bool {
        for project in projects {
            if projectNumberName == project.name {
                return true
            }
        }
        return false
    }
}

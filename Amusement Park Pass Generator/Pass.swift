//
//  Pass.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 20/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import Foundation

struct Pass {
    let entrant: Entrant
    var swipeTime: Date? = nil
    
    init(entrant: Entrant) {
        self.entrant = entrant
    }
}

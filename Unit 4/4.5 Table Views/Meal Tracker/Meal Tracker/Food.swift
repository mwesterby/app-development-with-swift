//
//  Food.swift
//  Meal Tracker
//
//  Created by Michael Westerby on 09/05/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import Foundation

struct Food {
    var name: String
    var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

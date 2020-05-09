//
//  Meal.swift
//  Meal Tracker
//
//  Created by Michael Westerby on 09/05/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
}

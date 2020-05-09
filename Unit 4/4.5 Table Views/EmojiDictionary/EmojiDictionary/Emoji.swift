//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Michael Westerby on 07/05/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import Foundation

struct Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    init(symbol: String, name: String, description: String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}

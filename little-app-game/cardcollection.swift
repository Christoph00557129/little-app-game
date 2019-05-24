//
//  cardcollection.swift
//  little-app-game
//
//  Created by User24 on 2019/5/14.
//  Copyright © 2019 User24. All rights reserved.
//

import Foundation

struct card {
    let name: String
    let cardURL: String
    let value: Int

    init(name: String, cardURL: String, value: Int) {
        self.name = name
        self.cardURL = cardURL
        self.value = value
    }
}




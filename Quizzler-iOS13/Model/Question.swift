//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yun Ni on 2024-05-06.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let ansewer: Bool
    
    init(text: String, ansewer: Bool) {
        self.text = text
        self.ansewer = ansewer
    }
}

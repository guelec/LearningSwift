//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yiğit Güleç on 25.04.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let options: [String]
    let correctAns: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        options = a
        correctAns = correctAnswer
        
    }
}

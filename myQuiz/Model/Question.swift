//
//  Question.swift
//  myQuiz
//
//  Created by Paweł Ferenc on 17/07/2023.
//

import Foundation

struct Question {
    let text : String
    let answer : [String]
    let correctAnswer : String
    
    init(q: String, a: [String], ca: String) {
        text = q
        answer = a
        correctAnswer = ca
    }
}

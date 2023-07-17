//
//  QuizBrain.swift
//  myQuiz
//
//  Created by Paweł Ferenc on 17/07/2023.
//

import Foundation


struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [Question(q: "2 + 2 = ", a: ["1", "2", "4"], ca: "4"),
                Question(q: "3 + 3 = ", a: ["4", "5", "6"], ca: "6"),
                Question(q: "2 - 1 = ", a: ["1", "5", "6"], ca: "1"),
                Question(q: "2 * 2 = ", a: ["1", "4", "8"], ca: "4"),
                Question(q: "3 * 3 = ", a: ["2", "4", "9"], ca: "9"),
                Question(q: "2 + 2 = ", a: ["1", "2", "4"], ca: "4"),
                Question(q: "3 + 3 = ", a: ["4", "5", "6"], ca: "6"),
                Question(q: "2 - 1 = ", a: ["1", "5", "6"], ca: "1"),
                Question(q: "2 * 2 = ", a: ["1", "4", "8"], ca: "4"),
                Question(q: "3 * 3 = ", a: ["2", "4", "9"], ca: "9"),]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answer
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func getNextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkCorrectAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        }else {
            return false
        }
    }
        
}

//
//  ViewController.swift
//  myQuiz
//
//  Created by Paweł Ferenc on 30/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonGotTouched(_ sender: UIButton) {
        let userResponse = sender.currentTitle!
        let goodAnswer = quizBrain.checkCorrectAnswer(userAnswer: userResponse)
        
        if goodAnswer == true {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizBrain.getNextQuestion()
    }
    
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Your score is: \(quizBrain.getScore())"
        choiceOne.setTitle(quizBrain.getAnswers()[0], for: .normal)
        choiceTwo.setTitle(quizBrain.getAnswers()[1], for: .normal)
        choiceThree.setTitle(quizBrain.getAnswers()[2], for: .normal)
        
        choiceOne.backgroundColor = .clear
        choiceTwo.backgroundColor = .clear
        choiceThree.backgroundColor = .clear
    }


}


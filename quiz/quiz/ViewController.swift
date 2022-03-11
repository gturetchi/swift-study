//
//  ViewController.swift
//  quiz
//
//  Created by Gabriel Turețchi on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLable: UILabel!
    @IBOutlet var answerLable: UILabel!
    
    let questions: [String] = [
        "What is 1 + 1 ?",
        "What is the capital of France?",
        "What is the chemical formula for water?"
    ]
    let answers: [String] = [
        "2",
        "Paris",
        "H2O"
    ]
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLable.text = questions[currentQuestionIndex]
    }

    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let questionString = questions[currentQuestionIndex]
        questionLable.text = questionString
        answerLable.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton){
        let answerString = answers[currentQuestionIndex]
        answerLable.text = answerString
    }
}


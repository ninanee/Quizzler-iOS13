//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var totalNmberQuestion = 0
    var totalNumberPassed = 0
    var time = Timer()
    
    let quiz = [
        Question(text: "2 + 3 == 5?", ansewer: true),
        Question(text: "5 - 3 == 2?", ansewer: true),
        Question(text: "3 - 8 >= 10?", ansewer: false)
    ]
    
    var questionNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
            }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let acturalAnswer = quiz[questionNum].ansewer
        
        if(userAnswer?.uppercased() == String(acturalAnswer).uppercased()) {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        if questionNum < (quiz.count - 1) {
            questionNum += 1
        } else{
            questionNum = 0
        }
        
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        time.invalidate()
      
       
    }
    
    @objc func updateUI() {
        progressView.text = quiz[questionNum].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNum + 1) / Float(quiz.count)
    }
    
}


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
    
    let quiz = [
        "2 + 3 == 5?",
        "5 - 3 == 2?",
        "3 - 8 >= 10?",
    ]
    
    var questionNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
            }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNum += 1
        updateUI()

    }
    
    func updateUI() {
        
        progressView.text = quiz[questionNum]
    }
}


//
//  SecondViewController.swift
//  MilionaireBeta
//
//  Created by Alexandru Coltan on 25.04.20.
//  Copyright © 2020 Alexandru Coltan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var quizBrain=QuestionBrain()
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var firstButtonLabel: UIButton!
    
    @IBOutlet weak var secondButtonLabel: UIButton!
    @IBOutlet weak var thirdButtonLabel: UIButton!
    
    @IBOutlet weak var fourthButtonLabel: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @objc func updateUI(){
        
        questionLabel.text=quizBrain.printQuestion()
        firstButtonLabel.setTitle(quizBrain.printButton1(), for: .normal)
        secondButtonLabel.setTitle(quizBrain.printButton2(), for: .normal)
        thirdButtonLabel.setTitle(quizBrain.printButton3(), for: .normal)
        fourthButtonLabel.setTitle(quizBrain.printButton4(), for: .normal)
        scoreLabel.text = "Score is \(quizBrain.score)"
        firstButtonLabel.backgroundColor=UIColor.clear
        secondButtonLabel.backgroundColor=UIColor.clear
        thirdButtonLabel.backgroundColor=UIColor.clear
        fourthButtonLabel.backgroundColor=UIColor.clear
       
    }
    
    
    @IBAction func lastPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToScore", sender: self)
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if quizBrain.checkAnswer(answer: sender.currentTitle!) == true
         {
             sender.backgroundColor=UIColor.green
            
         }
         else
         {
             sender.backgroundColor=UIColor.red
         }
        
        if quizBrain.numberQuestion+1==quizBrain.quiz.count
        {
            
            self.performSegue(withIdentifier: "goToScore", sender: self)}
        quizBrain.goNext()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
   
             }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! ThirdViewController
        destinationVC.scoreValue=String(format: "%i", quizBrain.score)
             }
    }
 
    
    
  
 
    



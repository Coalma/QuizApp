//
//  ViewController.swift
//  MilionaireBeta
//
//  Created by Alexandru Coltan on 25.04.20.
//  Copyright © 2020 Alexandru Coltan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToQuestions", sender: self)
    }
    
}


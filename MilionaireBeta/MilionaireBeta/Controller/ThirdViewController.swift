//
//  ThirdViewController.swift
//  MilionaireBeta
//
//  Created by Alexandru Coltan on 25.04.20.
//  Copyright © 2020 Alexandru Coltan. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var scoreValue:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text="Your Score is "+scoreValue!
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var finalScoreLabel: UILabel!
    
    @IBAction func restartButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goBack", sender: self)
    }
    
}

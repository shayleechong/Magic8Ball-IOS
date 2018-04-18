//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Shaylee Chong on 18/4/18.
//  Copyright © 2018 Shaylee Chong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallAnswer : Int = 0
    
    var ballImageNumber = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageBallAnswer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeBallAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAskMePressed(_ sender: Any) {
        
        changeBallAnswer()
        
    }
    
    func changeBallAnswer() {
        
        randomBallAnswer = Int(arc4random_uniform(5))
        
        imageBallAnswer.image = UIImage(named: ballImageNumber[randomBallAnswer] )
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeBallAnswer()
        
    }
    
}


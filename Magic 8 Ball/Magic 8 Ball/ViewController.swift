//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Juan Carlos León Flores on 30/04/17.
//  Copyright © 2017 Juan Carlos León Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallNumber = 1
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        ejecuta()
          }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ejecuta()
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    func ejecuta () {
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    
    }
    
}


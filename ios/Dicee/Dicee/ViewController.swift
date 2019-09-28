//
//  ViewController.swift
//  Dicee
//
//  Created by Prabodh Mayekar on 21/08/19.
//  Copyright © 2019 Prabodh Mayekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        motionDice()
    }
    
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        motionDice()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        motionDice()
    }
    
    func motionDice(){
        diceImageView1.image = UIImage(named: "dice" + String(Int.random(in: 1 ... 6)))
        diceImageView2.image = UIImage(named: "dice" + String(Int.random(in: 1 ... 6)))
    }
    
}


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
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        motionDice()
//    }
    
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        motionDice()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        motionDice()
    }
    
    func motionDice(){
        diceImageView1.image = [UIImage(named: "dice1"),UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")][Int.random(in: 0...5)]
        diceImageView2.image = [UIImage(named: "dice1"),UIImage(named: "dice2"),UIImage(named: "dice3"),UIImage(named: "dice4"),UIImage(named: "dice5"),UIImage(named: "dice6")][Int.random(in: 0...5)]
    }
    
}


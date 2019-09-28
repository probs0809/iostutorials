//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Prabodh Mayekar on 22/08/19.
//  Copyright © 2019 Prabodh Mayekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askMe: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBall()
    }
    
    @IBAction func onAskButtonPressed(_ sender: UIButton) {
            changeBall()
    }
    
    func changeBall(){
        askMe.image = UIImage(named: "ball" + String(Int.random(in: 1 ... 5)))
    }
    
}


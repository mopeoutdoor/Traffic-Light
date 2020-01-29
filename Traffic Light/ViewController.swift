//
//  ViewController.swift
//  Traffic Light
//
//  Created by Irina Kopchenova on 29.01.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redCircleView: UIImageView!
    @IBOutlet weak var yellowCircleView: UIImageView!
    @IBOutlet weak var greenCircleView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 0.3
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        switch (redCircleView.alpha,yellowCircleView.alpha,greenCircleView.alpha) {
        case (1.0,_,_):
            redCircleView.alpha = 0.3
            yellowCircleView.alpha = 1.0
        case (_,1.0,_):
            yellowCircleView.alpha = 0.3
            greenCircleView.alpha = 1.0
        case (_,_,1.0):
            greenCircleView.alpha = 0.3
            redCircleView.alpha = 1.0
        default:
            startButton.setTitle("Next", for: .normal)
            redCircleView.alpha = 1.0
        }
        
    }
    
    
}


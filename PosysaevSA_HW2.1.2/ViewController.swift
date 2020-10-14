//
//  ViewController.swift
//  PosysaevSA_HW2.1.2
//
//  Created by Sergei Posysaev on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    var start = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 12
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
    }


    @IBAction func startBtn() {
        if !start {
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            start = true
        }
        
        
        
    }
}


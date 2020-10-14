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
    private var start = false
    private var count = 1
    
    
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
            start = true
        }
        
        if count == 1 {
            redView.alpha = 1.0
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            count += 1
        }
        if count == 2 {
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            greenView.alpha = 0.3
            count += 1
        }
        if count == 3 {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
        }
        if count == 3 {
            count = 1
        }
        
        
    }
}


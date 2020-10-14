//
//  ViewController.swift
//  PosysaevSA_HW2.1.2
//
//  Created by Sergei Posysaev on 13.10.2020.
//

import UIKit


class ViewController: UIViewController {
    
    enum AlphaColor: CGFloat {
        case upAlpha = 1.0
        case  lowAlpha = 0.3
    }
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    private var start = false
    private var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 12
    }
    
    func resizeWidth() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }

    @IBAction func startBtn() {
        if !start {
            startButton.setTitle("NEXT", for: .normal)
            start = true
            resizeWidth()
            redView.alpha = AlphaColor.upAlpha.rawValue
        }
        
        if count == 1 {
            redView.alpha = AlphaColor.upAlpha.rawValue
            yellowView.alpha = AlphaColor.lowAlpha.rawValue
            greenView.alpha = AlphaColor.lowAlpha.rawValue
            count += 1
        } else if count == 2 {
            redView.alpha = AlphaColor.lowAlpha.rawValue
            yellowView.alpha = AlphaColor.upAlpha.rawValue
            greenView.alpha = AlphaColor.lowAlpha.rawValue
            count += 1
        } else if count == 3 {
            redView.alpha = AlphaColor.lowAlpha.rawValue
            yellowView.alpha = AlphaColor.lowAlpha.rawValue
            greenView.alpha = AlphaColor.upAlpha.rawValue
            count += 1
        }
        
        if count > 3 {
            count = 1
        }
    }
}


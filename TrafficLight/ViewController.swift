//
//  ViewController.swift
//  TrafficLight
//
//  Created by Renat Ibragimov on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    @IBOutlet var colorChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorChangeButton.configuration = setupButton(with: "START")
        
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
        
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
        
    }

    @IBAction func colorChangeTapped() {
        
        if redLight.alpha == 0.5 && yellowLight.alpha == 0.5 {
            greenLight.alpha = 0.5
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.5
            yellowLight.alpha = 1
        } else {
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
        }
        
        colorChangeButton.configuration = setupButton(with: "NEXT")
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .capsule
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 30)
        return buttonConfiguration
    }
}


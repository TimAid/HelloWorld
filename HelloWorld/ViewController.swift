//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aid on 11.05.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {

    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var button: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn : CGFloat = 1.0
    private let lightIsOff : CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        button.layer.cornerRadius = 10
        button.setTitle("START", for: .normal)
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
//    override func viewWillLayoutSubviews() {
//        redLight.layer.cornerRadius = redLight.frame.width / 2
//        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
//        greenLight.layer.cornerRadius = greenLight.frame.width / 2
//    }
    


    @IBAction func buttonPressed(_ sender: UIButton) {
        button.setTitle("NEXT", for: .normal)
    
        switch currentLight {
        case .red :
            yellowLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow :
            greenLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            redLight.alpha = lightIsOff
            currentLight = .green
        case .green :
            redLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
        
    
}


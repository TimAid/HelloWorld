//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aid on 11.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: VARAIBLES
    let redView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let greenView :UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(redView)
        view.addSubview(greenView)
        greenViewConstaints()
        redViewConstraints()
    }
    
    // MARK: COSTRAINTS
    
    func greenViewConstaints() {
        //Constraints
        let margins = view.layoutMarginsGuide
        greenView.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 4/10).isActive = true
        greenView.widthAnchor.constraint(equalTo: margins.widthAnchor, multiplier: 9/10).isActive = true
        greenView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
        greenView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 50).isActive = true
        greenView.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        
    }

    func redViewConstraints() {
        let margins = view.layoutMarginsGuide
        redView.heightAnchor.constraint(equalTo: margins.heightAnchor, multiplier: 4/10).isActive = true
        redView.widthAnchor.constraint(equalTo: margins.widthAnchor, multiplier: 9/10).isActive = true
        redView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 8).isActive = true
        redView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
        redView.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
    }
    



}


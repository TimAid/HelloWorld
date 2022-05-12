//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aid on 11.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Views()
    }
    
    // MARK: create two views one is green another is red put them in view
    
    func Views() {
        let greenView = UIView()
        //Constraints
        greenView.backgroundColor = UIColor.green
        greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor , constant: 10 ).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
   
        let redView = UIView()
        //Constaints
        redView.backgroundColor = UIColor.red
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
        redView.topAnchor.constraint(equalTo: greenView.bottomAnchor, constant: 8).isActive = true
        
        view.addSubview(greenView)
        view.addSubview(redView)
    }


}


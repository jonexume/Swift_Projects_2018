//
//  ViewController.swift
//  Hello_Color
//
//  Created by JONATHAN EXUME on 10/18/18.
//  Copyright © 2018 JONATHAN EXUME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isPurple = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // Code written for the button pressed to change color.
    @IBAction func changeColor(_ sender: Any) {
        
        if isPurple {
            view.backgroundColor = UIColor.red
            isPurple = false
        } else {
            view.backgroundColor = UIColor.purple
            isPurple = true
        }
        
    }
    
}


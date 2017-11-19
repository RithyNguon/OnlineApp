//
//  ViewController.swift
//  OnlineApp
//
//  Created by SBC on 9/14/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let appUsername = "rithypc"
    let appPassword = "12345"
    
    @IBAction func loginButton(_ sender: Any) {
        let inputUsername = usernameTextField.text!
        let inputPassword = passwordTextField.text!
        if inputUsername == appUsername && inputPassword == appPassword {
            
        }
    }
    @IBAction func registerButton(_ sender: Any) {

    }
}


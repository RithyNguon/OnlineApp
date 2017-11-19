//
//  LoginViewController.swift
//  OnlineApp
//
//  Created by SBC on 9/19/17.
//  Copyright © 2017 RTC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var DetailimageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var appUsername = "rithy"
    var appPassword = "123456"
    @IBAction func loginButton(_ sender: Any) {
        let inputUsername = usernameTextField.text!
        let inputPassword = passwordTextField.text!
        if (inputUsername == appUsername && inputPassword == appPassword){
            performSegue(withIdentifier: "segue_news", sender: nil)
        }else{
            let alertcontroller = UIAlertController(title: "Login Fail", message: "Incorrect Username or Password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertcontroller.addAction(okAction)
            present(alertcontroller, animated: true, completion: nil)
        }
    }
    @IBAction func registerButton(_ sender: Any) {
        
        
    }
    
    
}

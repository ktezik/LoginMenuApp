//
//  LoginViewController.swift
//  loginMenuApp
//
//  Created by Иван Гришин on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
    
    @IBOutlet var logInLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInLabel.layer.cornerRadius = 10
    }
    
    @IBAction func forgotUsernameAlert() {
        alertAction("Forgot Name", "Your username is: Username")
    }
    @IBAction func forgotPasswordAlert() {
        alertAction("Forgot Password", "Your password is: Password")
    }
    @IBAction func logInAction() {
        if usernameOutlet.text == "Username" && passwordOutlet.text == "Password" {
            alertAction("Nice", "You In")
        } else {
            alertAction("Wrong Password or Username", "Click Forgot Password and Forgot Username")
        }
    }
    
    private func alertAction(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

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
    
    private let firstUser = UserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInLabel.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcome = segue.destination as? UITabBarController else { return }
        guard let viewControllers = welcome.viewControllers else { return }

        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userNameLabelData = usernameOutlet.text
                
            } else if let infoWC = viewController as? MoreInfoViewController {
                let user = UserInfo()
                infoWC.surName = user.surname
                infoWC.userName = user.name
                infoWC.userInfo = user.moreInfo
            }
        }
        
    }
    
    @IBAction func forgotUsernameAlert() {
        alertAction("Forgot Name", "Your username is: Username")
        
    }
    @IBAction func forgotPasswordAlert() {
        alertAction("Forgot Password", "Your password is: Password")
    }
    @IBAction func logInAction() {
        if usernameOutlet.text != firstUser.name || passwordOutlet.text != firstUser.password {
            
            } else {
            alertAction("Wrong Password or Username", "Click Forgot Password and Forgot Username")
            passwordOutlet.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameOutlet.text = ""
        passwordOutlet.text = ""
    }
    
    private func alertAction(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

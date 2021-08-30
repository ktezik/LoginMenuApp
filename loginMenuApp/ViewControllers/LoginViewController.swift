//
//  LoginViewController.swift
//  loginMenuApp
//
//  Created by Иван Гришин on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
    
    @IBOutlet var logInLabel: UIButton!
    
    // MARK: - Private properties
    private let firstUser = UserInfo.GetUserInfo()

    
    // MARK: Boot parameters
    override func viewDidLoad() {
        super.viewDidLoad()
        logInLabel.layer.cornerRadius = 10
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcome = segue.destination as? UITabBarController else { return }
        guard let viewControllers = welcome.viewControllers else { return }

        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userNameLabelData = usernameOutlet.text
                
            } else if let infoWC = viewController as? MoreInfoViewController {
                infoWC.personOne = firstUser.person
                
            }
        }
        
    }
    
    // MARK: IBActions
    @IBAction func forgotUsernameAlert() {
        alertAction("Forgot Name", "Your username is: \(firstUser.userName)")
        
    }
    @IBAction func forgotPasswordAlert() {
        alertAction("Forgot Password", "Your password is: \(firstUser.password)")
    }
    @IBAction func logInAction() {
        if usernameOutlet.text != firstUser.userName || passwordOutlet.text != firstUser.password {
                alertAction("Wrong Password or Username", "Click Forgot Password and Forgot Username")
                passwordOutlet.text = ""
            }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameOutlet.text = ""
        passwordOutlet.text = ""
    }
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func alertAction(_ title: String, _ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

// MARK:
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameOutlet {
            passwordOutlet.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "welcomeVC", sender: nil)
        }
        return true
    }
}

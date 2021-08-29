//
//  WelcomeViewController.swift
//  loginMenuApp
//
//  Created by Иван Гришин on 26.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var logOutLabel: UIButton!
    
    var userNameLabelData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutLabel.layer.cornerRadius = 10
        
        userNameLabel.text = userNameLabelData
    }
}

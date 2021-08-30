//
//  MoreInfoViewController.swift
//  loginMenuApp
//
//  Created by Иван Гришин on 30.08.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurNameLabel: UILabel!
    @IBOutlet var userMoreInfoLabel: UILabel!
    
    var userName: String!
    var surName: String!
    var userInfo: String!
    
    let userInfoHadd = UserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        userSurNameLabel.text = surName
        userMoreInfoLabel.text = userInfo
    }

}

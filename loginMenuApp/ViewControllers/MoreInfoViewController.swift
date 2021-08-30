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
    
    var personOne: UserPerson!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = personOne.name
        userSurNameLabel.text = personOne.surname
        userMoreInfoLabel.text = personOne.moreInfo
    }

}

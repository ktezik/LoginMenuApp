//
//  User.swift
//  loginMenuApp
//
//  Created by Иван Гришин on 30.08.2021.
//

import Foundation


struct UserInfo {
    let userName = "Username"
    let password = "Password"
    let person = UserPerson()
    
    static func GetUserInfo() -> UserInfo {
        UserInfo()
    }
}

struct UserPerson {
    let name = "YAR!K"
    let surname = "Surname"
    let moreInfo = "I was born in NewYork, me 22, i love footboal"
}

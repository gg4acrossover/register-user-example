//
//  ONPasswordValidateItem.swift
//  ONRegisterUser
//
//  Created by viethq on 8/8/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import Foundation

class ONPasswordValidateItem: ONRegisterUserProtocol {
    var error: ONRegisterUserError = .invalidPassword
    let password: String
    
    init(password: String) {
        self.password = password
    }
    
    func isValid() -> Bool {
        let passRegEx = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"
        let passTest = NSPredicate(format: "SELF MATCHES %@", passRegEx)
        return passTest.evaluate(with: self.password)
    }
}

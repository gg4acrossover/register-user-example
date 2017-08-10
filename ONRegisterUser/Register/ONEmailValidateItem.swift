//
//  ONEmailValidateItem.swift
//  ONRegisterUser
//
//  Created by viethq on 8/8/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import Foundation

class ONEmailValidateItem: ONRegisterUserProtocol {
    var error: ONRegisterUserError = .invalidEmail
    private let email: String
    
    init(email: String) {
        self.email = email
    }
   
    func isValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.email)
    }
}

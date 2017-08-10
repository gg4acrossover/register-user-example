//
//  ONValidateRegisterUser.swift
//  ONRegisterUser
//
//  Created by viethq on 8/8/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import Foundation

class ONValidateRegisterUser {
    
    enum ONRegisterResult {
        case success(String)
        case fail(String)
    }
    
    let result: ONRegisterResult
    
    init(email: String, password: String) {
        let validator: [ONRegisterUserProtocol] = [ONEmailValidateItem(email: email),
                                                   ONPasswordValidateItem(password: password)]
        let invalids = validator.filter { !$0.isValid() }
        
        if invalids.count > 0 {
            self.result = .fail("Wrong format")
        } else {
            self.result = .success("Done")
        }
    }
}

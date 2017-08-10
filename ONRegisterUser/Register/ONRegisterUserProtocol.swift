//
//  ONRegisterUserProtocol.swift
//  ONRegisterUser
//
//  Created by viethq on 8/8/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import Foundation

enum ONRegisterUserError : Error {
    case invalidEmail
    case invalidPassword
}

protocol ONRegisterUserProtocol {
    var error: ONRegisterUserError { get }
    func isValid() -> Bool
}

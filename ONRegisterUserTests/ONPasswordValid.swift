//
//  ONPasswordValid.swift
//  ONRegisterUser
//
//  Created by viethq on 8/9/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import XCTest
@testable import ONRegisterUser

class ONPasswordValid: XCTestCase {
    /// password must more than 8 characters
    func testPasswordInvalidMinChar() {
        let isValid = ONPasswordValidateItem(password: "abcd123").isValid()
        XCTAssertFalse(isValid)
    }
    
    /// password must has at least one number
    func testPasswordInvalidNumber() {
        let isValid = ONPasswordValidateItem(password: "abcdefgh").isValid()
        XCTAssertFalse(isValid)
    }
    
    /// password must has at least one letter char
    func testPasswordInvalidChar() {
        let isValid = ONPasswordValidateItem(password: "12345678").isValid()
        XCTAssertFalse(isValid)
    }
    
    func testPasswordValid() {
        let isValid = ONPasswordValidateItem(password: "abcd5678").isValid()
        XCTAssertTrue(isValid)
    }
}

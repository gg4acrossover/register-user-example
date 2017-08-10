//
//  ONTestEmailValid.swift
//  ONRegisterUser
//
//  Created by viethq on 8/9/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import XCTest
@testable import ONRegisterUser

class ONTestEmailValid: XCTestCase {
    func testEmailInvalidCharacter() {
        let isValid = ONEmailValidateItem(email: "example@gmail,com").isValid()
        XCTAssertFalse(isValid)
    }
    
    func testEmailInvalidProvider() {
        let isValid = ONEmailValidateItem(email: "example@.com").isValid()
        XCTAssertFalse(isValid)
    }
    
    func testEmailInvalidInComplete() {
        let isValid = ONEmailValidateItem(email: "example@").isValid()
        XCTAssertFalse(isValid)
    }
    
    func testEmailInvalidUserName() {
        let isValid = ONEmailValidateItem(email: "@a.com").isValid()
        XCTAssertFalse(isValid)
    }
    
    func testEmailValid() {
        let isValid = ONEmailValidateItem(email: "example@a.com").isValid()
        XCTAssertTrue(isValid)
    }
}

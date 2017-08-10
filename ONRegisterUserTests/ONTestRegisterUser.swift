//
//  ONTestRegisterUser.swift
//  ONRegisterUser
//
//  Created by viethq on 8/10/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import XCTest
@testable import ONRegisterUser

class ONTestRegisterUser: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRegisterUserFailEmail() {
        let validator = ONValidateRegisterUser(email: "example@gmail,com", password: "abcd1234")
        
        let isValid: Bool
        switch validator.result {
        case .success(_):
            isValid = true
        case .fail(_):
            isValid = false
        }
        
        XCTAssertEqual( isValid, false)
    }
    
    func testRegisterUserSuccess() {
        let validator = ONValidateRegisterUser(email: "example@gmail.com", password: "abcd1234")
        
        let isValid: Bool
        switch validator.result {
        case .success(_):
            isValid = true
        case .fail(_):
            isValid = false
        }
        
        XCTAssertEqual( isValid, true)
    }
    
    func testRegisterUserFailPass() {
        let validator = ONValidateRegisterUser(email: "example@gmail.com", password: "abcd123")
        
        let isValid: Bool
        switch validator.result {
        case .success(_):
            isValid = true
        case .fail(_):
            isValid = false
        }
        
        XCTAssertEqual( isValid, false)
    }
}

//
//  ViewController.swift
//  ONRegisterUser
//
//  Created by viethq on 8/8/17.
//  Copyright © 2017 viethq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func tapRegister(_ sender: Any) {
        self.view.endEditing(true)
        
        let validator = ONValidateRegisterUser(email: self.userNameTextField.text!, password: self.passwordTextField.text!)
        
        switch validator.result {
        case .success(let str):
            SHOW_ALERT(message: str, vc: self)
        case .fail(let str):
            SHOW_ALERT(message: str, vc: self)
        }
    }
}

func SHOW_ALERT(message: String, vc: UIViewController) {
    let alertVC = UIAlertController(title: "Register", message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    alertVC.addAction(okAction)
    
    vc.present(alertVC, animated: true)
}


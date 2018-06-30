//
//  LoginViewController.swift
//  LittleCrown
//
//  Created by Grzegorz Przybyła on 28/06/2018.
//  Copyright © 2018 Grzegorz Przybyła. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doLogin(_ sender: Any) {
        if ValidationService.emailValidation(email: emailTextField.text) && ValidationService.textValidation(text: passwordTextField.text, length: 8) {
            let viewController = self.storyboard?.instantiateViewController(withIdentifier :"WelcomeViewController")
            self.present(viewController!, animated: true)
        } else {
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 1.0
            passwordTextField.layer.borderWidth = 1.0
        }
    }
}


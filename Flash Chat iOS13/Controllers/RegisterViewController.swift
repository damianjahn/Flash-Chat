//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Damian Jahn on 13/05/2020.
//  Copyright © 2020 Damian Jahn. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                //Navigate to ChatViewController
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
            }
        }
        }
    }
    
}

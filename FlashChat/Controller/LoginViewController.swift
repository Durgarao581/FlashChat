//
//  LoginViewController.swift
//  FlashChat
//
//  Created by Admin on 14/12/1942 Saka.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                }else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
               
            }
            
            
        }
    }
    
}




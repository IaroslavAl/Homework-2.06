//
//  ViewController.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 5
    }
    
    @IBAction func loginTapped() {
        if loginTF.text == "User" && passwordTF.text == "Pass" {
            print("Correct")
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            ) { _ in
                self.passwordTF.text = ""
            }
        }
    }
    
    @IBAction func forgotUserNameTapped(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        showAlert(title: "Oops!", message: "Your password is Pass 😉")
    }
    
    private func showAlert(title: String, message: String, okActionHandler: ((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: okActionHandler)
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

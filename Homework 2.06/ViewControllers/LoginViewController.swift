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
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.text = user.login
        passwordTF.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTabBarVC" {
            guard let tabBarVC = segue.destination as? UITabBarController else { return }
            
            guard let welcomeVC = tabBarVC.viewControllers?[0] as? WelcomeViewController else { return }
            welcomeVC.user = user
            
            guard let navigationController = tabBarVC.viewControllers?[1] as? UINavigationController else { return }
            
            guard let personInfoVC = navigationController.viewControllers[0] as? PersonInfoViewController else { return }
            personInfoVC.user = user
            personInfoVC.title = "\(user.person.firstName) \(user.person.lastName)"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = user.login
        passwordTF.text = user.password
    }
    
    @IBAction func loginTapped() {
        if loginTF.text == user.login && passwordTF.text == user.password {
            performSegue(withIdentifier: "showTabBarVC", sender: nil)
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

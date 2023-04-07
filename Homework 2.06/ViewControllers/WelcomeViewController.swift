//
//  WelcomeViewController.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    private let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Здравствуйте, \(user.person.teacherName)!\nМеня зовут \(user.person.firstName)!"
        
        gradient.frame = view.bounds
        gradient.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
}

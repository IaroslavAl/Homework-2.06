//
//  WelcomeViewController.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    private let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcomeText
        
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemPink.cgColor, UIColor.systemPurple.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
}

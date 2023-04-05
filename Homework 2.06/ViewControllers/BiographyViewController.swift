//
//  BiographyViewController.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 05.04.2023.
//

import UIKit

final class BiographyViewController: UIViewController {
    
    @IBOutlet weak var labelBiography: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.firstName) \(user.person.lastName) Bio"
        
        labelBiography.text = user.person.biography
    }
}


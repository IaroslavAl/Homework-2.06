//
//  PersonInfoViewController.swift
//  Homework 2.06
//
//  Created by Iaroslav Beldin on 05.04.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var imageAvatar: UIImageView! {
        didSet {
            imageAvatar.layer.cornerRadius = imageAvatar.frame.width / 2
        }
    }
    
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelFirstName.text = user.person.firstName
        labelLastName.text = user.person.lastName
        labelAge.text = user.person.age
        labelGender.text = user.person.gender == .male ? "Мужской" : "Женский"
        
        imageAvatar.image = UIImage(named: user.person.avatar)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let biographyVC = segue.destination as? BiographyViewController else { return }
            biographyVC.user = user
    }
}

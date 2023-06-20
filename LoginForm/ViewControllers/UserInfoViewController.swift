//
//  UserInfoViewController.swift
//  LoginForm
//
//  Created by Armen on 08.06.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
        
        @IBOutlet var photoImage: UIImageView! {
            didSet {
                photoImage.layer.cornerRadius = photoImage.frame.height / 2
            }
        }
        
        @IBOutlet var nameLabel: UILabel!
        @IBOutlet var surnameLabel: UILabel!
        @IBOutlet var cityLabel: UILabel!
        @IBOutlet var ageLabel: UILabel!
    
        var user: User!

        override func viewDidLoad() {
            super.viewDidLoad()
            view.addVerticalGradientLayer()
            photoImage.image = UIImage(named: user.person.photo)
            title = user.person.fullName
            nameLabel.text = user.person.name
            surnameLabel.text = user.person.surname
            cityLabel.text = user.person.city
            ageLabel.text = String(user.person.age)
        
            print("User ID: ", user.id)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let userBioVC = segue.destination as? UserBioViewController else { return }
            userBioVC.user = user
        }
    }

//
//  UserBioViewController.swift
//  LoginForm
//
//  Created by Armen on 08.06.2023.
//

import UIKit

final class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        title = "\(user.person.fullName) Bio"
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        userBioTextView.text = user.person.bio
        
        print("User ID: ", user.id)
    }
}

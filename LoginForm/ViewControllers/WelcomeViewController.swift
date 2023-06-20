//
//  LoginViewController.swift
//  LoginForm
//
//  Created by Armen on 11.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    @IBAction func logoutButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
        
        print("User ID: ", user.id)
    }
}

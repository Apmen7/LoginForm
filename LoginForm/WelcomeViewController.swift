//
//  LoginViewController.swift
//  LoginForm
//
//  Created by Armen on 11.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: String! 
    
    @IBAction func logoutButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    
}



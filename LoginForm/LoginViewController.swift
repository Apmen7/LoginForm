//
//  ViewController.swift
//  LoginForm
//
//  Created by Armen on 11.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var username = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        showAlert(title: "Oops", message: "You name is User 😉")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        showAlert(title: "Oops", message: "You password is password 😉")
    }
    
    
    @IBAction func loginButton() {
        
        guard userNameTF.text == username && passwordTF.text == password else {
            showAlert(title: "Invalid username or password",
                      message: "Please, enter correct username and password.",
                      textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

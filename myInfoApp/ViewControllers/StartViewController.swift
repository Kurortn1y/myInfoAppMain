//
//  ViewController.swift
//  myInfoApp
//
//  Created by Roman on 11.10.23.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTF.text == user.username, passwordTF.text == user.password else {
            showAlert(
                with: "Wrong Username or Password",
                message: "Enter correct",
                textfield: passwordTF
            )
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan (touches, with: event)
        self.view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tapbarVC = segue.destination as? UITabBarController
        tapbarVC?.viewControllers?.forEach{ viewControlller in
            if let loginVC = viewControlller as? HomeViewController {
                loginVC.user = user
            } else if let naviVC = viewControlller as? UINavigationController{
                let infoVC = naviVC.topViewController as? InfoViewController
                infoVC?.user = user
                
            }
        }
    }
    
   @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgotButtonDidPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Ooops", message: "Your Username is Roman 🥶")
        : showAlert(with: "Ooops", message: "Your password is 11 ⛄️")
    }
    
    
    private func showAlert(with title: String, message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(okAction)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


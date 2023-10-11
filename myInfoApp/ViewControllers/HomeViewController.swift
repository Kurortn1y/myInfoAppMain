//
//  LoginViewController.swift
//  myInfoApp
//
//  Created by Roman on 11.10.23.
//

import UIKit

final class HomeViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient()
        loginTF.text = "Welcome, \(user.username)"
    }
    
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
    private func setGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.blue.cgColor,
            UIColor.white.cgColor,
            UIColor.cyan.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}



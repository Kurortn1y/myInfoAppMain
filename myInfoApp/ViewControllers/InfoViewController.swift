//
//  InfoViewController.swift
//  myInfoApp
//
//  Created by Roman on 11.10.23.
//

import UIKit

final class InfoViewController: UIViewController {
    
    @IBOutlet var infoPhoto: UIImageView!
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var surnameTF: UITextField!
    @IBOutlet var ageTF: UITextField!
    @IBOutlet var jobTF: UITextField!
    
    var user : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoPhoto.image = UIImage(named: user.person.photo)
        setGradient()
        setTextFields()
        self.navigationItem.title = user.person.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.forBioIntermediate = user.person.bio
    }
    
    private func setGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.cyan.cgColor,
            UIColor.white.cgColor,
            UIColor.blue.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func setTextFields() {
        nameTF.text = user.person.name
        surnameTF.text = user.person.surname
        jobTF.text = user.person.job
        ageTF.text = String(user.person.age)
    }
}

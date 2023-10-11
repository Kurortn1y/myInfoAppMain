//
//  BioViewController.swift
//  myInfoApp
//
//  Created by Roman on 11.10.23.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var bioTF: UILabel!
    
    var forBioIntermediate: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTF.text = forBioIntermediate
        setGradient()
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
}

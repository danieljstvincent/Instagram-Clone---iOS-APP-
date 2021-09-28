//
//  LoginController.swift
//  Instagram Clone 2021
//
//  Created by Daniel St Vincent on 9/27/21.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1, 2]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
    }
}

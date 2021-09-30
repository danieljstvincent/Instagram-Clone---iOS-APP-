//
//  LoginController.swift
//  Instagram Clone 2021
//
//  Created by Daniel St Vincent on 9/27/21.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let iconImage: UIImageView = {
        let iv = UIImageView(image: imageliteral)
        return iv
    }
  // MARK: - LifeCycle
        override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helpers
    
    // How to hide the navagiation bar
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        // When workingn with core animation it is important to use CGColor
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
    }
}

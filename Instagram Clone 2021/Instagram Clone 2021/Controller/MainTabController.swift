//
//  MainTabController.swift
//  Instagram Clone 2021
//
//  Created by Daniel St Vincent on 9/23/21.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - Lifecycle
    override func  viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
   }
    
    // MARK: - helpers
    
    func configureViewControllers() {
        view.backgroundColor = .white

        let feed = FeedController()

        let search = SearchController()

        let imageSelector = ImageSeletorController()

        let notifications = NotificaitonController()

        let profile = ProfileController()

        viewControllers = [feed, search, imageSelector, notifications, profile ]
    }
}


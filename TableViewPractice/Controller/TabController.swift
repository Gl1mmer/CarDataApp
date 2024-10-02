//
//  TabController.swift
//  TableViewPractice
//
//  Created by Amankeldi Zhetkergen on 29.09.2024.
//

import UIKit
    
class TabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: AboutUsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "list.bullet")
        vc2.tabBarItem.image = UIImage(systemName: "info.circle.fill")
        
        vc1.title = "Products"
        vc2.title = "About Us"
        
        tabBar.tintColor = .systemCyan
        tabBar.backgroundColor = .white
        
        setViewControllers([vc1, vc2], animated: true)
    }
}


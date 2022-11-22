//
//  MainTabBarViewController.swift
//  VidVidVid
//
//  Created by Joseph Gilmore on 11/6/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        
        let vc1 = BrowseViewController()
        let vc2 = FavoritesViewController()
        
        vc1.tabBarItem.image = UIImage(systemName: "film.circle.fill")
        vc1.title = "Browse"
        
        vc2.tabBarItem.image = UIImage(systemName: "heart.circle.fill")
        vc2.title = "Favorites"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2], animated: true)
    }
}

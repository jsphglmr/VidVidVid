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
        
        let vc1 = MovieListViewController()
        let vc2 = MovieListViewController()
        let vc3 = MovieListViewController()
        let vc4 = MovieListViewController()
        
        vc1.tabBarItem.image = UIImage(systemName: "film.circle.fill")
        vc2.tabBarItem.image = UIImage(systemName: "film.circle.fill")
        vc3.tabBarItem.image = UIImage(systemName: "film.circle.fill")
        vc4.tabBarItem.image = UIImage(systemName: "film.circle.fill")
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }
}

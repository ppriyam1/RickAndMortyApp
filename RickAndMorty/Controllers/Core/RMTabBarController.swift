//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Preeti Priyam on 10/20/23.
//

import UIKit

/// Root tabbar controller
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
         setUpTabs()
    }
    
    private func setUpTabs() {
        let characterNav = configure(vc: RMCharacterViewController(), withTitle: "Characters", image: "person", andTag: 1)
        let locationNav = configure(vc: RMLocationViewController(), withTitle: "Locations", image: "globe", andTag: 2)
        let episodeNav = configure(vc: RMEpisodeViewController(), withTitle: "Episodes", image: "tv", andTag: 3)
        let settingsNav = configure(vc: RMSettingsViewController(), withTitle: "Settings", image: "gear", andTag: 4)
        
        setViewControllers(
            [characterNav, locationNav, episodeNav, settingsNav],
            animated: true
        )
    }
    
    private func configure(vc: UIViewController,
                           withTitle title: String,
                           image: String,
                           andTag tag: Int) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        let image = UIImage(systemName: image)
        nav.navigationBar.prefersLargeTitles = true
        nav.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        return nav
    }
}


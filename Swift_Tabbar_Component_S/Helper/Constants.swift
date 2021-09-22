//
//  File.swift
//  Swift_Tabbar_Component_S
//
//  Created by Serkan Mehmet Malagiç on 22.09.2021.
//

import Foundation
import UIKit

class Constants {
    static let user_login = [
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
    ]
    
    static let user_guest = [
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
    ]
    
    static let user_admin = [
        createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
    ]
}

var tabItems = [UINavigationController]()

fileprivate func createNavController(for rootViewController: UIViewController,
                                     title: String,
                                     image: UIImage) -> UIViewController {
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.title = title
    navController.tabBarItem.image = image
    navController.navigationBar.prefersLargeTitles = true
    rootViewController.navigationItem.title = title
    return navController
}

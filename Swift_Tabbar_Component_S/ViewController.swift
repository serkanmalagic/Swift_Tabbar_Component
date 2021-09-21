//
//  ViewController.swift
//  Swift_Tabbar_Component_S
//
//  Created by Serkan Mehmet Malagiç on 20.09.2021.
//

import UIKit

var role = 0

class OpeningViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Opening"
        
    }
    
    @IBAction func btnAction(_ sender: Any) {
        role = 1
        performSegue(withIdentifier: "toDashBoard", sender: nil)
    }
    
    @IBAction func btn2Action(_ sender: Any) {
        role = 2
        performSegue(withIdentifier: "toDashBoard", sender: nil)
    }
    
    @IBAction func btn3Action(_ sender: Any) {
        role = 3
        performSegue(withIdentifier: "toDashBoard", sender: nil)
    }
}

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.title = "Main"
    }
}

class ProfileViewController: UIViewController {override func viewDidLoad() {super.viewDidLoad()
        view.backgroundColor = .brown
        self.title = "Profile"
    }
}

class LoginViewController: UIViewController {override func viewDidLoad() {
    super.viewDidLoad()
        view.backgroundColor = .darkGray
        self.title = "Login"
    }
}

class DashboardTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
        
    }
    func setupVCs() {
        switch role {
        case 1:
            viewControllers = [
                createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
                createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
                createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!)
            ]
            break
        case 2:
            viewControllers = [
                createNavController(for: ProfileViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
            ]
            break
        case 3:
            viewControllers = [
                createNavController(for: LoginViewController(), title: NSLocalizedString("Search", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
                createNavController(for: MainViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
                createNavController(for: ProfileViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!),
                createNavController(for: MainViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
                createNavController(for: ProfileViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
            ]
            break
        default:
            break
        }
        
    }
    
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
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(viewController.title)
    }
    
    
}

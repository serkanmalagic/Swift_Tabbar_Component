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
    
    @IBAction func btnAction(_ sender: Any)  {pushSegue(roles: 1)}
    @IBAction func btn2Action(_ sender: Any) {pushSegue(roles: 2)}
    @IBAction func btn3Action(_ sender: Any) {pushSegue(roles: 3)}
    
    func pushSegue(roles : Int){
        role = roles
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DashboardTabBarSB") as! DashboardTabBarController
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.title = "Main"
    }
}

class ProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        self.title = "Profile"
    }
}

class LoginViewController: UIViewController {
    override func viewDidLoad() {
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
            viewControllers = Constants.user_login
            break
        case 2:
            viewControllers = Constants.user_guest
            break
        case 3:
            viewControllers = Constants.user_admin
            break
        default:
            break
        }
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print(viewController.title)
    }
    
}

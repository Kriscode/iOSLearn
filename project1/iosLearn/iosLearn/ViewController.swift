//
//  ViewController.swift
//  iosLearn
//
//  Created by Kris Welke on 12/08/16.
//  Copyright © 2016 kriscode. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        initializeTabBarItems()
    }
    
    func initializeTabBarItems() {
        
        let friends = FriendListViewController()
        let icon1 = UITabBarItem(title: "Friends", image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
        friends.tabBarItem = icon1
        
        let notifications = NotificationsViewController()
        let icon2 = UITabBarItem(title: "Notifications", image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
        notifications.tabBarItem = icon2
        
        let map = MapViewController()
        let icon3 = UITabBarItem(title: "Map", image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
        map.tabBarItem = icon3
        
        let mainController = MainViewController()
        let icon4 = UITabBarItem(title: "Logout", image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
        mainController.tabBarItem = icon4
        
        
        let controllers = [friends, notifications, map, mainController]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
        
    }
    
    //Delegate methods
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        return true;
    }
    
    
    
    
}


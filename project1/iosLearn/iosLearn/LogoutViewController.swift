//
//  MainViewController.swift
//  iosLearn
//
//  Created by Kris Code Development on 28.08.2016.
//  Copyright © 2016 kriscode. All rights reserved.
//

import UIKit
import Firebase

class LogoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleLogout();
        
    }
    
    func handleLogout() {
        do {
            try FIRAuth.auth()?.signOut()
            let viewController = TabBarViewController()
            self.present(viewController, animated: true, completion: nil)
            
        } catch let logoutError {
            print(logoutError)
        }
    }
    
    
}

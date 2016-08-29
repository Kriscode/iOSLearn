//
//  MainViewController.swift
//  iosLearn
//
//  Created by Kris Code Development on 28.08.2016.
//  Copyright © 2016 kriscode. All rights reserved.
//

import UIKit
import Firebase

class MainViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if FIRAuth.auth()?.currentUser?.uid == nil {
            let loginController = LoginController()
            self.presentViewController(loginController, animated: true, completion: nil)
            
        } else {
            let viewController = ViewController()
            self.presentViewController(viewController, animated: true, completion: nil)
            
        }
        
        
        
    }
    
    func handleLogout() {
        do {
            try FIRAuth.auth()?.signOut()
            
        } catch let logoutError {
            print(logoutError)
        }
    }
    
    
}

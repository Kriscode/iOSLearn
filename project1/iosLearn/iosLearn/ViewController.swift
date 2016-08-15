//
//  ViewController.swift
//  iosLearn
//
//  Created by Kris Welke on 12/08/16.
//  Copyright © 2016 kriscode. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
        
    }
    
    func handleLogout() {
        let loginController = LoginController()
        presentViewController(loginController, animated: true, completion: nil)
    }
    
}


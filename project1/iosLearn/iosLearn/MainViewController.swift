//
//  MainViewController.swift
//  iosLearn
//
//  Created by Kris Code Development on 28.08.2016.
//  Copyright © 2016 kriscode. All rights reserved.
//

import UIKit

class MainViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginController = LoginController()
        presentViewController(loginController, animated: true, completion: nil)
        
    }
    
}

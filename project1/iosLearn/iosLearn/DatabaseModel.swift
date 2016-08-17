//
//  DatabaseModel.swift
//  iosLearn
//
//  Created by Kris Welke on 17/08/16.
//  Copyright © 2016 kriscode. All rights reserved.
//

import Foundation
import Firebase


class DatabaseModel: NSObject {
    
    var refDB: FIRDatabaseReference!
    
    override init() {
        self.refDB = FIRDatabase.database().reference()
    }
    
}

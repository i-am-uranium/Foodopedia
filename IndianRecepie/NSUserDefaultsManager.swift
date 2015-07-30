//
//  NSUserDefaultsManager.swift
//  IndianRecepie
//
//  Created by Ravi Ranjan on 25/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class NSUserDefaultsManager: NSObject {

    static let userDefaults = NSUserDefaults.standardUserDefaults()
    
    class func synchronize(){
    
    let myData = NSKeyedArchiver.archivedDataWithRootObject(RecepeManager.recepes)
        NSUserDefaults.standardUserDefaults().setObject(myData, forKey: "recepearray")
        NSUserDefaults.standardUserDefaults().synchronize()
        
    
    }
    
}

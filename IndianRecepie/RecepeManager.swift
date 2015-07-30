//
//  RecepeManager.swift
//  IndianRecepie
//
//  Created by Ravi Ranjan on 16/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class RecepeManager: NSObject {
    //array of Recepe Class
    static var recepes = [Recepe]()
    
    
    class func addRecepe(title:String,content:String){
    //creating and appending the instance of Recpe class
    let r = Recepe(title: title, desc: content)
        recepes.append(r)
    }
    
    
    class func deleteRecepe(id:Int){
        //removing the instance at index id
    recepes.removeAtIndex(id)
        
    }
    
    class func getRecepe(id:Int)->Recepe{
        //getting the recepe at index id
        if(recepes.count>0){
        return recepes[id]
        }
        return Recepe()
    }

}

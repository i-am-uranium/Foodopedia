//
//  Recepe.swift
//  IndianRecepie
//
//  Created by Ravi Ranjan on 16/07/15.
//Copyright © 2015 Ravi Ranjan. All rights reserved.
//
//data Structure for the Recepe
//
import UIKit

class Recepe: NSObject,NSCoding {
    var title : String?
    var desc : String?

    init(title:String,desc :String) {
        self.title = title
        self.desc = desc
    }
    
    
    override init() {
        super.init()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        if let titleDecoded = aDecoder.decodeObjectForKey("title") as? String{
        title = titleDecoded
        }
        
        if let contentDecoded = aDecoder.decodeObjectForKey("desc") as? String{
            desc = contentDecoded
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let titleEncoded = title
        {
            aCoder.encodeObject(titleEncoded, forKey: "title")
        }
        
        if let contentEncoded = desc
        {
            aCoder.encodeObject(contentEncoded, forKey: "desc")
        }
    }
    
    
    
}

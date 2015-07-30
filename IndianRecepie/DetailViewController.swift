//
//  DetailViewController.swift
//  IndianRecepie
//
//  Created by Ravi Ranjan on 15/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var titleForRecepe:Recepe?
    
    
    @IBOutlet weak var recepesContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        recepesContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        
    }
    override func viewDidAppear(animated: Bool) {
        self.title = titleForRecepe?.title
        self.recepesContent.text = titleForRecepe?.desc
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

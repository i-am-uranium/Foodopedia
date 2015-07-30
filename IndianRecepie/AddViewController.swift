//
//  AddViewController.swift
//  IndianRecepie
//
//  Created by Ravi Ranjan on 15/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var recepesContent: UITextView!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recepesContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        
        addButton.enabled = false
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleButtonStates", name: UITextFieldTextDidChangeNotification, object: nil)
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "handleButtonStates", name: UITextViewTextDidChangeNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func keyHidingForTextView(sender: AnyObject) {
        recepesContent.resignFirstResponder()
    }
    
    
    
    @IBAction func keyDoneButtonForET(sender: AnyObject) {
        titleText.resignFirstResponder()
    }
    
    
    
    //handling button state or visibilty
    func handleButtonStates(){
        if(recepesContent.text != ""){
        doneButton.enabled = true
        }else{
            doneButton.enabled = false
        }
        if (titleText.text != "" && recepesContent.text != ""){
        addButton.enabled = true
            addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }else{
            addButton.enabled = false
            addButton.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        }
    }
    
    
    @IBAction func addRecepesAction(sender: AnyObject) {
        activityIndicator.startAnimating()
        
        RecepeManager.addRecepe(titleText.text!, content: recepesContent.text )
        titleText.text = ""
        recepesContent.text = ""
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("myString", forKey: "mObject")
        
        
        
        //animation for feedback ActivityIndicator
        
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(0.5 * Double(NSEC_PER_SEC)))
        dispatch_after(time,dispatch_get_main_queue()){
            self.activityIndicator.stopAnimating()
        }
        
        
        
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

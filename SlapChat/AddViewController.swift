//
//  AddViewController.swift
//  SlapChat
//
//  Created by Max Tkach on 7/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let dataStore = DataStore()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.becomeFirstResponder()
    }
    
    
    @IBAction func doneButtonAction(sender: AnyObject) {

        let message = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: dataStore.managedObjectContext) as! Message
        message.content = self.textField.text
        message.createdAt = NSDate()
        
        dataStore.saveContext()
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    
    @IBAction func cancelButtonAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

}

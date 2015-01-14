//
//  ViewController.swift
//  PostCard
//
//  Created by Robb on 1/12/15.
//  Copyright (c) 2015 Robb Sarchet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Unhides label, display's enterNameTextField's text, changest text to red, resets keyboard, changes button text.
        nameLabel.hidden = false
        nameLabel.text = "Sent message to " + enterNameTextField.text + "."
        
        nameLabel.textColor = UIColor.redColor()
        
        enterNameTextField.resignFirstResponder() //Makes keyboard go away
        enterNameTextField.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        //Unhides the message label, displays message, changes text to blue, resets keyboard
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        messageLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        
        enterMessageTextField.resignFirstResponder()
        
    }

}


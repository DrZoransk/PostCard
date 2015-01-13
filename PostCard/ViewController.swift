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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = "Sent message to " + enterNameTextField.text + "."
        
        messageLabel.textColor = UIColor.redColor()
        
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder() //Makes keyboard go away
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}


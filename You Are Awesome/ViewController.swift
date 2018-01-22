//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Sean Healy on 1/22/18.
//  Copyright © 2018 Sean Healy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Greatmessage(_ sender: UIButton) {
        
        var messages = ["You Are Fantastic!","You Are Great!","You Are Amazing!","You Are Awesome"]
        
        if messageLabel.text == messages[0] {
            messageLabel.text = messages[1]
        } else if messageLabel.text == messages[1] {
            messageLabel.text = messages[2]
        } else {
            messageLabel.text = messages[0]
        }
    }
    
    
}


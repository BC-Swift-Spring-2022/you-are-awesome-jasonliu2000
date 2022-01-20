//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jason Liu on 1/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad() is running")
        messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("message button pressed")
        messageLabel.text = "You Are Awesome!"
    }
    
}


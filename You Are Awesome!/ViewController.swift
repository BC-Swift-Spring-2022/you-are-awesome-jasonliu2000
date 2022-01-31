//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jason Liu on 1/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var imageNumber = 0
    var messageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Da Bomb!"]
        messageLabel.text = messages[messageNumber]
        
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        
        if messageNumber == (messages.count - 1) {
            messageNumber = 0
        } else {
            messageNumber += 1
        }
        
        if imageNumber == 9 {
            imageNumber = 0
        } else {
            imageNumber += 1
        }
        
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "image2")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }

    }
    
}


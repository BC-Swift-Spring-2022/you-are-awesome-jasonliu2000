//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jason Liu on 1/19/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var audioPlayer: AVAudioPlayer!
    
    var imageNumber = 0
    var messageNumber = 0
    var soundNumber = 0
    
    let totalNumberOfImages = 10
    let totalNumberofSounds = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSoundSwitch.isOn = true
    }
    
    func playSound(name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription). couldn't initialize AVAudioPlayer object")
            }
        } else {
            print("ERROR: couldn't read data from file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn {
            playSoundSwitch.isOn = false
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Da Bomb!",
                        "When the Genius Bar Needs Help They Call You!",
                        "You Are Fantastic!",
                        "Good Job!"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberofSounds-1)
        if playSoundSwitch.isOn {
            playSound(name: "sound\(soundNumber)")
        }
    }
    
}


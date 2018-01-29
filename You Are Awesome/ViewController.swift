//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Sean Healy on 1/22/18.
//  Copyright © 2018 Sean Healy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber =  -1
    var soundNumber = -1
    let numberOfImages = 4
    let numberOfSounds = 2
    var soundName = ""
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("Error: data in \(sound) could not be played as a sound")
            }
            
        } else {
            print("ERROR: file \(soundName) didn't load" )
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat  {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    @IBAction func Greatmessage(_ sender: UIButton) {

        
        var messages = ["You Are Fantastic!","You Are Great!","You Are Amazing!","When the Genius Bar needs help, they call you!","You Are Awesome"]
        
        
        // Show an message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show an image
        awesomeImage.isHidden = false
        
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image1\(imageNumber)")
        
        //Play a sound
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        
        let soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
        
        /*
        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
        messageLabel.text = messages[randomIndex]
        */
 
        /*
        messageLabel.text = messages[index]
        index = index + 1
        
        if index == messages.count {
            index = 0
        }
        */
        
//        let message1 = "You Are Fantastic!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }

        

    }
    
    
}


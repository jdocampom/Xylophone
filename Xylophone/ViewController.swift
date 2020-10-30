//
//  ViewController.swift
//  Xylophone
//
//  Created by Juan Diego Ocampo on 30/10/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
// MARK: Variables
    
    var player: AVAudioPlayer!
    
// MARK: Methods
    
    /// Tag: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// Tag: playSound()
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
// MARK: IB-Actions
    
    /// Tag: keyPressed()
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        /// Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        /// Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        ///Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
}









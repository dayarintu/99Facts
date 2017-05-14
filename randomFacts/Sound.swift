//
//  Sound.swift
//  funFacts
//
//  Created by Dayakar Reddy Marri on 5/13/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import Foundation
import AVFoundation

var audioPlayer = AVAudioPlayer()
func playSound() {
    let alertSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "click", ofType: "mp3")!)
    
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    } catch{
    }
    do {
        try AVAudioSession.sharedInstance().setActive(true)
    } catch{
    }
    
    // Play the sound
    do {
        audioPlayer = try AVAudioPlayer(contentsOf: alertSound as URL)
    } catch {
    }
    
    audioPlayer.prepareToPlay()
    audioPlayer.play()
}

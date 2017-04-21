//
//  audioPlayer.swift
//  randomFacts
//
//  Created by Dayakar Reddy Marri on 4/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import Foundation
import AVFoundation


var myPlayer: AVAudioPlayer!
let path = Bundle.main.path(forResource: "click", ofType:nil)!
let url = URL(fileURLWithPath: path)


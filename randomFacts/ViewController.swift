//
//  ViewController.swift
//  randomFacts
//
//  Created by Dayakar Reddy Marri on 4/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var funFactButn: UIButton!
    
    
    let colorProvider = bgColorProvider()

    var facts = ["There are 60,000 miles of blood vessels in the human body 😱 " ,
                 "Prime minister of india is Narendra Modi 🇮🇳", "Greatest person in the world is Me 😊 " ,
                 "The average four year-old child asks over four hundred questions a day. 🤔 " ,
                 "Humans shed 40 pounds of skin in their lifetime, completely replacing their outer skin every month." ,
                 "The average adult human has two to nine pounds of bacteria in his or her body." ,
                 "More germs are transferred shaking hands than kissing 😘 " ,
                 "A Human Being will have 50,000 to 70,000 thoughts per day 😱 " ,
                 "Smiling and Laughing Reduce Stress 😀 😂 " ,
                 "There are more than 100 benefits of meditating everyday 🙏🙏🙏"]
    
        func randomFacts(facts: [String]) -> String {
        let num = arc4random_uniform(UInt32(facts.count))
        
        
        return facts[Int(num)]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.buttonOutlet.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func factButton(_ sender: Any) {
        textLabel.text =  randomFacts(facts: facts)
    
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButn.tintColor = randomColor
        }
}







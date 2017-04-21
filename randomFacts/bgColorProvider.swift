//
//  bgColorProvider.swift
//  randomFacts
//
//  Created by Dayakar Reddy Marri on 4/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit
import GameKit

struct bgColorProvider {
    
    let colors = [
        UIColor(red: 120/255.0, green: 200/255.0, blue: 168/255.0, alpha: 1.0) ,
        UIColor(red: 212/255.0, green: 103/255.0, blue: 142/255.0, alpha: 1.0) ,
        UIColor(red: 76/255.0, green: 206/255.0, blue: 200/255.0, alpha: 1.0) ,
        UIColor(red: 128/255.0, green: 199/255.0, blue: 92/255.0, alpha: 1.0) ,
        UIColor(red: 70/255.0, green: 130/255.0, blue: 157/255.0, alpha: 1.0) ,
        UIColor(red: 130/255.0, green: 150/255.0, blue: 174/255.0, alpha: 1.0) ,
        UIColor(red: 180/255.0, green: 170/255.0, blue: 189/255.0, alpha: 1.0) ,
        UIColor(red: 150/255.0, green: 185/255.0, blue: 120/255.0, alpha: 1.0) ,
        UIColor(red: 170/255.0, green: 160/255.0, blue: 162/255.0, alpha: 1.0) ,
    ]
    
    func randomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors [randomNumber]
    }
}

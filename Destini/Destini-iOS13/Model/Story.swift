//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyTitle: String
    let c1: String
    let c2: String
    let c1Dest: Int
    let c2Dest: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        storyTitle = title
        c1 = choice1
        c2 = choice2
        c1Dest = choice1Destination
        c2Dest = choice2Destination
    }
}

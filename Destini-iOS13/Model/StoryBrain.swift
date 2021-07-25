//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice1Destination: 1, choice2: "Take a right.", choice2Destination: 2),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice1Destination: 0, choice2: "Play dead.", choice2Destination: 0),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice1Destination: 0, choice2: "Check for traps", choice2Destination: 0
        ),
    ]
    private var position = 0
    
    var current: Story {
        return stories[position]
    }
    
    mutating func nextStory(userChoice: String) {
        if userChoice == current.choice1 {
            position = current.choice1Destination
        } else if userChoice == current.choice2 {
            position = current.choice2Destination
        } else {
            position = 0
        }
    }
}

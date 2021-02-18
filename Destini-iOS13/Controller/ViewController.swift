//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    var currentStory: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentStory = story.stories[0]
        updateUI(nextStory: story.stories[0])
    }
    
    func updateUI(nextStory: Story) {
        currentStory = nextStory
        storyLabel.text = currentStory?.title
        choice1Button.setTitle(currentStory?.choice1, for: .normal)
        choice2Button.setTitle(currentStory?.choice2, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == currentStory?.choice1 {
            updateUI(nextStory: story.nextStory(userChoice: currentStory!, choiceMade: 1))
        } else {
            updateUI(nextStory: story.nextStory(userChoice: currentStory!, choiceMade: 2))
        }
    }
    
}


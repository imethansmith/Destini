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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(nextStory: story.stories[0])
    }
    
    func updateUI(nextStory: Story) {
        storyLabel.text = nextStory.title
        choice1Button.setTitle(nextStory.choice1, for: .normal)
        choice2Button.setTitle(nextStory.choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        var result = story.nextStory(userChoice: sender.currentTitle!)
        updateUI(nextStory: result)
    }
    
}


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
    
    // let example = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.");
    
    var storyBrain = StoryBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        updateUI();
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        // link both buttons to an IBAction called choiceMade().
        let userChoice = sender.title(for: .normal)!;
        print (userChoice);
        storyBrain.nextStory(userChoice: userChoice);
        
        updateUI();
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getQuestion();
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal);
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal);
    }
}


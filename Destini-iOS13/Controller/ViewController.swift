//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1Outlet: UIButton!
    @IBOutlet weak var button2Outlet: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        story.checkChoice(sender.titleLabel!.text!)
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = story.getQuestion()
        button1Outlet.setTitle(story.getChoice1(), for: .normal)
        button2Outlet.setTitle(story.getChoice2(), for: .normal)
    }
    
}


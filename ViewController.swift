//
//  ViewController.swift
//  FunFacts
//
//  Created by Charles Di Renzo on 7/6/16.
//  Copyright © 2016 Charles Di Renzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //the exclamation in this case indicates that there is a chance that the outlet won't be loaded before 
    //the screen loads and if you try to interact with the label beforehand, the app will crash
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
   let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factModel.getRandomFact()
        //starts out by getting random fact so the label is pre populated on start up
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// this actually 'activates' the fun fact function as well as color function
    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    }
    
}


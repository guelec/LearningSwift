//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var DiceImageViewTwo: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let array = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageViewOne.image = array[Int.random(in: 0...5)]
        DiceImageViewTwo.image = array[Int.random(in: 0...5)]

        
        
    }
    
}


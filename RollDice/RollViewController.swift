//
//  RollViewController.swift
//  Dice
//
//  Created by xengar on 2017-11-03.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    @IBAction func rollTheDice() {
        performSegue(withIdentifier: "rollDice", sender: self)
    }
    
    // Prepare for launch a segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DiceViewController
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()
    }
    
    
}


//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImageView1: UIView!

    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    let diceArray: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Can use force unwrap because we are working with an array with 5 concrete elements, so randomElement will always be kept.
        diceImageViewOne.image = UIImage(imageLiteralResourceName: diceArray.randomElement()!)
        
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: diceArray[Int.random(in: 0...5)])
        
    }
}


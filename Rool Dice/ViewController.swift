//
//  ViewController.swift
//  Rool Dice
//
//  Created by Oleg Ozimok on 12/02/2019.
//  Copyright © 2019 Oleg Ozimok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }

    @IBAction func rollACTION(_ sender: Any) {
        rollDice()
    }
    
    func rollDice(){
        let numberOne = arc4random_uniform(6) + 1
        let numberTwo = arc4random_uniform(6) + 1
        label.text = "The sum is: \(numberOne + numberTwo)"
        leftImageView.image = UIImage(named: "Dice\(numberOne)")
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
    }
    
}


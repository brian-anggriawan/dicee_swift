//
//  ViewController.swift
//  Dicee-swift
//
//  Created by Brian Anggriawan on 23/05/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var buttonRoll: UIButton!
    @IBAction func buttonRoll(_ sender: Any) {
        rollDicees()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultDicees()
    }
    
    func setDefaultDicees() {
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceThree")
        diceImageView2.image = UIImage(imageLiteralResourceName: "DiceOne")
    }
    
    func changesAlphaDicees(aplhaValue: CGFloat) {
        diceImageView1.alpha = aplhaValue
        diceImageView2.alpha = aplhaValue
    }
    
    
    func rollDicees() {
        diceImageView1.image = UIImage(imageLiteralResourceName: getNameDice())
        diceImageView2.image = UIImage(imageLiteralResourceName: getNameDice())
    }
    
    func getNameDice() -> String {
        let randomNumber = Int.random(in: 0..<6)
        let filesName = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        return filesName[randomNumber]
    }
}


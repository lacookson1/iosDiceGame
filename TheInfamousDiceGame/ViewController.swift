//
//  ViewController.swift
//  TheInfamousDiceGame
//
//  Created by Dan on 05/05/2019.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage: UIImageView!
    
    @IBOutlet weak var totalScore: UILabel!
    
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        message.text = "Let's play."
    }
    var allDice = [ #imageLiteral(resourceName: "Kismet-Ace"), #imageLiteral(resourceName: "Kismet-Deuce"), #imageLiteral(resourceName: "Kismet-Trey"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    var randomDiceIndex = 0
    var score = 0
    
    @IBAction func rollButton(_ sender: Any) {
        message.text = " "
        randomDiceIndex = Int.random(in: 0...5)
        diceImage.image = allDice[randomDiceIndex]
        score = score + randomDiceIndex + 1
        totalScore.text = "\(score)"
        rollLogic()
    }
    
    func rollLogic() {
        if(randomDiceIndex == 0){
            message.text = "You lose."
            score = 0
        } else if (score >= 21){
            message.text = "You win."
            score = 0
        }
        }

}

//
//  ViewController.swift
//  Trying
//
//  Created by isehgal on 6/27/16.
//  Copyright © 2016 isehgal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
    
    var cardNamesArray:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        
        let randomFirstNumber:Int = Int(arc4random_uniform(13))
        
        let firstNumberString:String = self.cardNamesArray[randomFirstNumber]
        
        self.firstCardImageView.image = UIImage(named: firstNumberString)
        
        let randomSecondNumber:Int = Int(arc4random_uniform(13))
        
        let secondNumberString:String = self.cardNamesArray[randomSecondNumber]
        
        self.secondCardImageView.image = UIImage(named: secondNumberString)
        
        if randomFirstNumber > randomSecondNumber{
        //TODO: first card larger than second card
            self.playerScore += 1;
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if randomFirstNumber == randomSecondNumber{
        //TODO: second card is equal to first card
        
        }
        else {
        //TODO: first card is smaller than second card
            self.enemyScore += 1;
            self.enemyScoreLabel.text = String(self.enemyScore)
        
        }
    }

}


//
//  ViewController.swift
//  War
//
//  Created by Produccion on 16/12/14.
//  Copyright (c) 2014 Ramiro Bedoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fistCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.playRoundButton.setTitle("Play!", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        //self.playRoundButton.setTitle("Play Round", forState: UIControlState.Normal)
        
        //Randomize a number for the fist imageView
        var fistRandomNumber = arc4random_uniform(13) + 1
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        //Constructor a String whit the randomNumber
        var fistCardString:String = String(format: "%i", fistRandomNumber)
        fistCardString += GetRandomText()
        
        var secondCardString:String = String(format: "%i", secondRandomNumber )
        secondCardString += GetRandomText()
        
        
        self.fistCardImageView.image = UIImage(named: fistCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
    }
    
    func GetRandomText() -> String{
        var fistRandomCardType =  arc4random_uniform(4)+1
        var textCard = ""
        if fistRandomCardType == 1{
            textCard = "_of_clubs"
        }
        else if fistRandomCardType == 2 {
            textCard = "_of_diamonds"
        }
        else if fistRandomCardType == 3 {
            textCard = "_of_hearts"
        }
        else{
            textCard = "_of_spades"
        }
        
        return textCard
    }

}


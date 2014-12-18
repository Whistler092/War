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


}


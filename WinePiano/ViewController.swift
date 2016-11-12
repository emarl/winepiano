//
//  ViewController.swift
//  WinePiano
//
//  Created by Ema on 2016/07/21.
//  Copyright © 2016年 Ema. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:EmaRadio!
    var playerSe:EmaRadio!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        player = EmaRadio()
        player.play("BGM.mp3")
        
        playerSe = EmaRadio()
        playerSe.setLoop(0);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func wineTapped(sender:UIButton)
    {
        let soundName = "\(sender.tag).mp3"
        playerSe.play(soundName)
    }
}


//
//  Emaのラジカセ.swift
//  WinePiano
//
//  Created by Ema on 2016/11/12.
//  Copyright © 2016年 Ema. All rights reserved.
//

import Foundation
import AVFoundation

class EmaRadio
{
    var player:AVAudioPlayer!
    var numberofloops = -1
    
    func play(soundName:String)
    {
        let url = NSBundle.mainBundle().bundleURL.URLByAppendingPathComponent(soundName)
        do
        {
            try player = AVAudioPlayer(contentsOfURL: url)
            player.numberOfLoops = numberofloops
            player.prepareToPlay()
            player.play()
        }
        catch
        {
            print("エラーです")
        }
    }
    
    func setLoop(loop:Int)
    {
        numberofloops = loop
    }
}
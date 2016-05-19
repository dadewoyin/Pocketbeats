//
//  FirstViewController.swift
//  Pocketbeats
//
//  Created by David Dairo on 5/14/16.
//  Copyright © 2016 The Dairo Files. All rights reserved.
//

import UIKit
// import AVFoundation
import AudioToolbox

// Sound Properties (as GLOBAL VARIABLES)
var soundURL: NSURL?
var soundID:SystemSoundID = 0


class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blackColor()
    }

    @IBAction func kickDrum(sender: AnyObject) {
        let filePath = NSBundle.mainBundle().pathForResource("kick french", ofType: "wav")
        soundURL = NSURL(fileURLWithPath: filePath!)
        AudioServicesCreateSystemSoundID(soundURL!, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
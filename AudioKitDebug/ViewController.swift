//
//  ViewController.swift
//  AudioKitDebug
//
//  Created by Luke Nimtz on 7/7/17.
//  Copyright © 2017 Luke Nimtz. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {
    
    var oscillator = AKOscillator()
    var touch = false

    override func viewDidLoad() {
        print("VDL")
        super.viewDidLoad()
        
        AudioKit.output = oscillator
        oscillator.amplitude = 0.0
        oscillator.rampTime = 0.1
        AudioKit.start()
        oscillator.start()
        
        oscillator.amplitude = 1.0
        sleep(1)
        oscillator.amplitude = 0.0 // the oscillator is not silenced here
//        sleep(1) // works if this is uncommented
    }

}

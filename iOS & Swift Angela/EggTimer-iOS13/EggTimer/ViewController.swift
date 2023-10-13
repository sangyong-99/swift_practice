//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var totalTime = 0
    var secondsPassed = 0
    
    var timer = Timer()
    
    @IBAction func hardnessSelectors(_ sender: UIButton) {
        
        secondsPassed = 0
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            let percentageProgress:Float = Float(secondsPassed) / Float(totalTime)
            print(percentageProgress)
            progressBar.progress = percentageProgress
            
            secondsPassed += 1
            
        } else {
            progressBar.progress = 1.0
            titleLabel.text = "DONE!"
        }
    }
    
}

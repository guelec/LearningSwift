//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var player: AVAudioPlayer!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 0.0
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        
        totalTime = eggTimes[hardness]!
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true )

    }
    @objc func updateTimer(){
        
        if secondsPassed < totalTime {
            let percentageProgress = Float(secondsPassed ) /  Float(totalTime)
            
            progressBar.progress = percentageProgress
            
            secondsPassed += 1
        } else {
            progressBar.progress = 1.0
            timer.invalidate()
            titleLabel.text = "DONE!"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                        player = try! AVAudioPlayer(contentsOf: url!)
                        player.play()
        }
    }

}

//
//  ViewController.swift
//  Hustle_Mode
//
//  Created by JONATHAN EXUME on 10/18/18.
//  Copyright © 2018 JONATHAN EXUME. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocketStream: UIImageView!
    @IBOutlet weak var hustleMode: UILabel!
    @IBOutlet weak var hustleOn: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // code for
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    
    @IBAction func powetButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketStream.frame = CGRect(x: 0, y: 130, width: 375, height: 402)
        }) { (finished) in
            self.hustleMode.isHidden = false
            self.hustleOn.isHidden = false
        }
    }
    
    

}


//
//  ViewController.swift
//  SwissMeme FanApp
//
//  Created by Thomas Brun on 28.12.18.
//  Copyright © 2018 Thomas Brun. All rights reserved.
//

//
// var AudioPLayer, let Sound, do PlayerWithSound, Button



import UIKit
import AVFoundation

class ViewController: UIViewController {

    var VerreisAudioPlayer = AVAudioPlayer()
    var BrutalGetrainiertAudioPlayer = AVAudioPlayer()
    var MaschineTraktorPanzerAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        // let XXXSound = Bundle.main.path(forResource: "XXX", ofType: "mp3")
        
        let VerreisSound = Bundle.main.path(forResource: "verreis", ofType: "mp3")
        let BrutalGetrainiertSound = Bundle.main.path(forResource: "BrutalGetrainiert", ofType: "mp3")
        let MaschineTraktorPanzerSound = Bundle.main.path(forResource: "MaschineTraktorPanzer", ofType: "mp3")
        
        do {
            VerreisAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: VerreisSound!))
            BrutalGetrainiertAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: BrutalGetrainiertSound!))
            MaschineTraktorPanzerAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: MaschineTraktorPanzerSound!))
        
        }
        
        catch {
            
            print(error)
            
        }
    }


    @IBAction func VerreisClick(_ sender: UIButton) {
    VerreisAudioPlayer.play()
    }
    

    @IBAction func BrutalGetrainiertClick(_ sender: UIButton) {
    BrutalGetrainiertAudioPlayer.play()
    }
    
    @IBAction func MaschineTraktorPanzerClick(_ sender: UIButton) {
    MaschineTraktorPanzerAudioPlayer.play()
    
    }
    
}

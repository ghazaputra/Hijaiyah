//
//  ViewController.swift
//  Hijaiyah
//
//  Created by Edi Sunardi on 19/11/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    var player: AVAudioPlayer?

    @IBOutlet weak var hijaiyahLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnHijaiyah(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
        let text = sender.currentTitle
        
        hijaiyahLbl.text = text
        
    }
    

    func playSound(sound: String) {
        let call = Bundle.main.url(forResource: sound, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: call!)
        
        player?.play()
    }
    

}


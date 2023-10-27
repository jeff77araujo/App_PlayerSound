//
//  ViewController.swift
//  Player Sound
//
//  Created by Mac do JEFF on 17/07/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    @IBOutlet weak var sliderVolume: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = Bundle.main.path(forResource: "bach", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch {}
    }
    
    @IBAction func controlVolume(_ sender: Any) {
        player.volume = sliderVolume.value
        print(player.volume)
        print(sliderVolume.value)
    }
    
    @IBAction func playButton(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        player.stop()
        player.currentTime = 0
    }

}

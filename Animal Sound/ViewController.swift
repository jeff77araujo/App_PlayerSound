//
//  ViewController.swift
//  Animal Sound
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
        // Do any additional setup after loading the view.
    }

    @IBAction func controlVolume(_ sender: Any) {
        player.volume = sliderVolume.value
        print(player.volume)
        print(sliderVolume.value)
    }
    
    @IBAction func dogButton(_ sender: Any) {
        self.playSound(sound: "cao")
    }
    
    @IBAction func catButton(_ sender: Any) {
        self.playSound(sound: "gato")
    }
    
    @IBAction func lionButton(_ sender: Any) {
        self.playSound(sound: "leao")
    }
    
    @IBAction func sheepButton(_ sender: Any) {
        self.playSound(sound: "ovelha")
    }
    
    @IBAction func cowButton(_ sender: Any) {
        self.playSound(sound: "vaca")
    }
    
    @IBAction func monkeyButton(_ sender: Any) {
        self.playSound(sound: "macaco")
    }
    
    
    
    func playSound(sound: String) {
        let path = Bundle.main.path(forResource: sound, ofType: "mp3") ?? ""
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            player.play()
        } catch {}
    }
}


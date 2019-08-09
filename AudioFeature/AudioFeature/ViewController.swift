//
//  ViewController.swift
//  AudioFeature
//
//  Created by Vibhor Gupta on 1/29/18.
//  Copyright © 2018 Vibhor Gupta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer : AVAudioPlayer?
    var isPlaying  : Bool = false


    @IBAction func recordButton(_ sender: UIButton) {


    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = Bundle.main.path(forResource: "music_one", ofType: "mp3")

        let  filePathUrl = NSURL.fileURL(withPath: filePath!)

        do {

            audioPlayer = try AVAudioPlayer(contentsOf: filePathUrl)
        } catch {
            print(" couldn't load file :(")
        }

    }

    //   AudioSlider.maximumValue = Float((audioPlayer?.duration)!)
    //  var timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateSlider), userInfo: nil, repeats: true)

    @IBAction func playButton(_ sender: UIButton) {
        audioPlayer?.play()
    }
    @IBOutlet weak var AudioSlider: UISlider!
    @IBAction func changeAudiotime(_ sender: Any) {
        //
        //        audioPlayer?.play()
        //        audioPlayer?.currentTime = TimeInterval(AudioSlider.value)
        //        audioPlayer?.prepareToPlay()
        //        audioPlayer?.play()
    }

    @objc func updateSlider() {
        //AudioSlider.value = Float((audioPlayer?.currentTime)!)

    }
}




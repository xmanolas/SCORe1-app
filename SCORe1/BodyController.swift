//
//  ViewController.swift
//  SCORe1
//
//  Created by C Manolas on 04/08/2017.
//  Copyright © 2017 C Manolas. All rights reserved.
//

import UIKit
import AVFoundation


class BodyController: UIViewController {
  
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var LungImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //tapButton.setImage(UIImage(named: "bubble")?.withRenderingMode(.alwaysOriginal), for: .highlighted)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func playSND (sndName: String, sndTYP: String) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: sndName, ofType: sndTYP)!))
            audioPlayer.numberOfLoops = -1
            audioPlayer.prepareToPlay()
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        catch {
            print(error)
        }
        
    }
    
    func stopSND () {
        if audioPlayer.isPlaying {
        audioPlayer.stop()
        }
    }

    func animateIMG (img: UIImageView, pic1: String, pic2: String){
        img.animationImages = [
            UIImage(named: pic1)!,
            UIImage(named: pic2)!
        ]
        img.animationDuration = 2
        img.startAnimating()
    }
    
    func stopIMG (img: UIImageView){
        img.stopAnimating()
    }

    @IBAction func LungR(_ sender: Any) {
        playSND(sndName: "BreathingA", sndTYP: "mp3")
        animateIMG(img: LungImage, pic1: "LungsSmall.png", pic2: "Lungs.png")
        backImage.alpha = 0.3
    }
    
    @IBAction func LungRelease(_ sender: Any) {
        stopSND()
        stopIMG(img: LungImage)
        backImage.alpha = 1.0
    }
    
    @IBAction func LungL(_ sender: Any) {
        playSND(sndName: "BreathingA", sndTYP: "mp3")
        animateIMG(img: LungImage, pic1: "LungsSmall.png", pic2: "Lungs.png")
        backImage.alpha = 0.3
        
    }
    
    @IBAction func LungRelease2(_ sender: Any) {
        stopSND()
        stopIMG(img: LungImage)
        backImage.alpha = 1.0
    }
    
    @IBAction func Brain(_ sender: Any) {
        playSND(sndName: "BrainA", sndTYP: "mp3")
    }
    
    @IBAction func BrainRelease(_ sender: Any) {
        stopSND()
    }
 
    @IBAction func Heart(_ sender: Any) {
        playSND(sndName: "Heart", sndTYP: "mp3")
    }
    
    @IBAction func HeartRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func Eyes(_ sender: Any) {
        playSND(sndName: "Eyes", sndTYP: "mp3")
    }
    
    @IBAction func EyesRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func Mouth(_ sender: Any) {
        playSND(sndName: "Speech", sndTYP: "mp3")
    }
    
    @IBAction func MouthRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func StomachA(_ sender: Any) {
        playSND(sndName: "Stomach", sndTYP: "mp3")
    }
    
    @IBAction func StomachB(_ sender: Any) {
        playSND(sndName: "Stomach", sndTYP: "mp3")
    }
    
    @IBAction func StomachARelease(_ sender: Any) {
        stopSND()
    }
   
    @IBAction func StomachBRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func MuscleA(_ sender: Any) {
        playSND(sndName: "Muscle", sndTYP: "mp3")
    }
    
    @IBAction func MuscleARelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func MuscleB(_ sender: Any) {
        playSND(sndName: "Muscle", sndTYP: "mp3")
    }
    
    @IBAction func MuscleBRelease(_ sender: Any) {
        stopSND()
    }
    
    
    @IBAction func Bladder(_ sender: Any) {
        playSND(sndName: "Bladder", sndTYP: "mp3")
    }
    
    @IBAction func BladderRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func Kidney(_ sender: Any) {
        playSND(sndName: "Kidneys", sndTYP: "mp3")
    }
    
    @IBAction func KidneyRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func Blood(_ sender: Any) {
        playSND(sndName: "Blood", sndTYP: "mp3")
    }
    
    @IBAction func BloodRelease(_ sender: Any) {
        stopSND()
    }
    
    @IBAction func Liver(_ sender: Any) {
     playSND(sndName: "Liver", sndTYP: "mp3")
    }
    
    @IBAction func LiverRelease(_ sender: Any) {
        stopSND()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


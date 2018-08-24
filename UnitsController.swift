//
//  NewViewController.swift
//  SCORe1
//
//  Created by C Manolas on 10/08/2017.
//  Copyright © 2017 C Manolas. All rights reserved.
//

import UIKit
import AVFoundation

class UnitsController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
   
    @IBOutlet weak var imgHome: UIImageView!
    @IBOutlet weak var imgGin: UIImageView!
    @IBOutlet weak var imgHalfPint: UIImageView!
    @IBOutlet weak var imgWine: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    @IBAction func btnGin(_ sender: UIButton) {
        imgHome.alpha = 0.0
        imgGin.alpha = 1.0
        playSND(sndName: "1_Gin", sndTYP: "wav")
    }
    
    @IBAction func btnGinRelease(_ sender: Any) {
        imgHome.alpha = 1.0
        imgGin.alpha = 0.0
        stopSND()
    }
    
    @IBAction func btnHalfPint(_ sender: Any) {
        imgHome.alpha = 0.0
        imgHalfPint.alpha = 1.0
        playSND(sndName: "1_5_Lager", sndTYP: "wav")
    }
    
    @IBAction func btnHalfPintRelease(_ sender: Any) {
        imgHome.alpha = 1.0
        imgHalfPint.alpha = 0.0
        stopSND()
    }
    
    @IBAction func btnWine(_ sender: Any) {
        imgHome.alpha = 0.0
        imgWine.alpha = 1.0
        playSND(sndName: "1_6_Wine", sndTYP: "wav")
    }
    
    @IBAction func btnWineRelease(_ sender: Any) {
        imgHome.alpha = 1.0
        imgWine.alpha = 0.0
        stopSND()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

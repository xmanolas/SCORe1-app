//
//  MapController.swift
//  SCORe1
//
//  Created by C Manolas on 10/08/2017.
//  Copyright © 2017 C Manolas. All rights reserved.
//

import UIKit
import AVFoundation

class MapController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var backImageMap: UIImageView!
    @IBOutlet weak var backImageMapNA: UIImageView!
    @IBOutlet weak var backImageMap19: UIImageView!
    @IBOutlet weak var backImageMap2029: UIImageView!
    @IBOutlet weak var backImageMap3039: UIImageView!
    @IBOutlet weak var backImageMap4049: UIImageView!
    @IBOutlet weak var backImageMap50: UIImageView!
    @IBOutlet weak var mapLegend: UIImageView!
    @IBOutlet weak var mapLegendNA: UIImageView!
    @IBOutlet weak var mapLegend19: UIImageView!
    @IBOutlet weak var mapLegend2029: UIImageView!
    @IBOutlet weak var mapLegend3039: UIImageView!
    @IBOutlet weak var mapLegend4049: UIImageView!
    @IBOutlet weak var mapLegend50: UIImageView!
    
    
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

    
    @IBAction func btnNA(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMapNA.alpha = 1.0
        mapLegend.alpha = 0
        mapLegendNA.alpha = 1
        playSND(sndName: "Binge_NA", sndTYP: "wav")
    }
    
    @IBAction func btnNARelease(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMapNA.alpha = 0.0
        mapLegend.alpha = 1
        mapLegendNA.alpha = 0
        stopSND()
    }
    
    @IBAction func btn19(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMap19.alpha = 1.0
        mapLegend.alpha = 0
        mapLegend19.alpha = 1
        playSND(sndName: "Binge_0_19", sndTYP: "wav")
    }
    
    
    @IBAction func btn19Release(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMap19.alpha = 0.0
        mapLegend.alpha = 1
        mapLegend19.alpha = 0
        stopSND()
    }
    
    
    @IBAction func btn2029(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMap2029.alpha = 1.0
        mapLegend.alpha = 0
        mapLegend2029.alpha = 1
        playSND(sndName: "Binge_20_29", sndTYP: "wav")
    }
    
    @IBAction func btn2029Release(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMap2029.alpha = 0.0
        mapLegend.alpha = 1
        mapLegend2029.alpha = 0
        stopSND()
    }
    
    @IBAction func btn3039(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMap3039.alpha = 1.0
        mapLegend.alpha = 0
        mapLegend3039.alpha = 1
        playSND(sndName: "Binge_30_39", sndTYP: "wav")
    }
    
    @IBAction func btn3039Release(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMap3039.alpha = 0.0
        mapLegend.alpha = 1
        mapLegend3039.alpha = 0
        stopSND()
    }
    
    @IBAction func btn4049(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMap4049.alpha = 1.0
        mapLegend.alpha = 0
        mapLegend4049.alpha = 1
        playSND(sndName: "Binge_40_49", sndTYP: "wav")
    }
    
    @IBAction func btn4049Release(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMap4049.alpha = 0.0
        mapLegend.alpha = 1
        mapLegend4049.alpha = 0
        stopSND()
    }
    
    @IBAction func btn50(_ sender: Any) {
        backImageMap.alpha = 0.0
        backImageMap50.alpha = 1.0
        mapLegend.alpha = 0
        mapLegend50.alpha = 1
        playSND(sndName: "Binge_50", sndTYP: "wav")
    }
    
    @IBAction func btn50Release(_ sender: Any) {
        backImageMap.alpha = 1.0
        backImageMap50.alpha = 0.0
        mapLegend.alpha = 1
        mapLegend50.alpha = 0
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

//
//  CalculatorController.swift
//  SCORe1
//
//  Created by C Manolas on 22/08/2017.
//  Copyright © 2017 C Manolas. All rights reserved.
//

import UIKit
import AVFoundation

class CalculatorController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var flgUnits: Int = 0
    var unitMeter: Float = 0.0
    var ginMeter: Int = 0
    var halfPintMeter: Int = 0
    var wineMeter: Int = 0
    
    
    @IBOutlet weak var lblUnits: UILabel!
    @IBOutlet weak var lblGin: UILabel!
    @IBOutlet weak var lblHalfPint: UILabel!
    @IBOutlet weak var lblWine: UILabel!
    @IBOutlet weak var imgHome: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Binge_NA", ofType: "wav")!))
            audioPlayer2.numberOfLoops = -1
            audioPlayer2.prepareToPlay()
            audioPlayer2.currentTime = 0
            audioPlayer2.play()
        }
        catch {
            print(error)
        }
        
        // Do any additional setup after loading the view.
    }
    
    func playSND (sndName: String, sndTYP: String) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: sndName, ofType: sndTYP)!))
            audioPlayer.numberOfLoops = 0
            audioPlayer.prepareToPlay()
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        catch {
            print(error)
        }
    }
    
    func clrView (){
        do {
            audioPlayer2.stop()
            audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Binge_NA", ofType: "wav")!))
            audioPlayer2.numberOfLoops = -1
            audioPlayer2.prepareToPlay()
            audioPlayer2.currentTime = 0
            audioPlayer2.play()
            flgUnits = 0
            unitMeter = 0.0
            lblUnits.text = String(unitMeter)
            ginMeter = 0
            lblGin.text = String(ginMeter)
            halfPintMeter = 0
            lblHalfPint.text = String(halfPintMeter)
            wineMeter = 0
            lblWine.text = String(wineMeter)
        
        }
        catch {
            print(error)
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
        
        unitMeter += 1
        ginMeter += 1
        lblUnits.text = String(unitMeter)
        lblGin.text = String(ginMeter)
        if unitMeter >= 4 && flgUnits == 0 {
            do {
                audioPlayer2.stop()
                audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Binge_50", ofType: "wav")!))
                audioPlayer2.numberOfLoops = -1
                audioPlayer2.prepareToPlay()
                audioPlayer2.currentTime = 0
                audioPlayer2.play()
                flgUnits = 1
            }
            catch {
                print(error)
            }
            
        }
        playSND(sndName: "1_Gin", sndTYP: "wav")
    }
    

    
    @IBAction func btnHalfPint(_ sender: Any) {
        
        unitMeter += 1.5
        halfPintMeter += 1
        lblUnits.text = String(unitMeter)
        lblHalfPint.text = String(halfPintMeter)
        if unitMeter >= 4 && flgUnits == 0 {
            do {
                audioPlayer2.stop()
                audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Binge_50", ofType: "wav")!))
                audioPlayer2.numberOfLoops = -1
                audioPlayer2.prepareToPlay()
                audioPlayer2.currentTime = 0
                audioPlayer2.play()
                flgUnits = 1
            }
            catch {
                print(error)
            }
            
        }
        playSND(sndName: "1_5_Lager", sndTYP: "wav")
    }

    
    @IBAction func btnWine(_ sender: Any) {
        unitMeter += 1.6
        wineMeter += 1
        lblUnits.text = String(unitMeter)
        lblWine.text = String(wineMeter)
        if unitMeter >= 4 && flgUnits == 0 {
            do {
                audioPlayer2.stop()
                audioPlayer2 = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Binge_50", ofType: "wav")!))
                audioPlayer2.numberOfLoops = -1
                audioPlayer2.prepareToPlay()
                audioPlayer2.currentTime = 0
                audioPlayer2.play()
                flgUnits = 1
            }
            catch {
                print(error)
            }
        }
        playSND(sndName: "1_6_Wine", sndTYP: "wav")
    }
    
    @IBAction func btnReset(_ sender: Any) {
        clrView()
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

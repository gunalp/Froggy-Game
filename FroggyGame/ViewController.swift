//
//  ViewController.swift
//  FroggyGame
//
//  Created by Alp Uysal on 19.03.2018.
//  Copyright © 2018 Alp Uysal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var froggy1: UIImageView!
    @IBOutlet weak var froggy2: UIImageView!
    @IBOutlet weak var froggy3: UIImageView!
    @IBOutlet weak var froggy4: UIImageView!
    @IBOutlet weak var froggy5: UIImageView!
    @IBOutlet weak var froggy6: UIImageView!
    @IBOutlet weak var froggy7: UIImageView!
    @IBOutlet weak var froggy8: UIImageView!
    @IBOutlet weak var froggy9: UIImageView!
    @IBOutlet weak var froggy10: UIImageView!
    @IBOutlet weak var froggy11: UIImageView!
    @IBOutlet weak var froggy12: UIImageView!
    @IBOutlet weak var froggy13: UIImageView!
    @IBOutlet weak var froggy14: UIImageView!
    @IBOutlet weak var froggy15: UIImageView!
    @IBOutlet weak var froggy16: UIImageView!
    @IBOutlet weak var froggy17: UIImageView!
    @IBOutlet weak var froggy18: UIImageView!
    @IBOutlet weak var froggy19: UIImageView!
    @IBOutlet weak var froggy20: UIImageView!
    @IBOutlet weak var froggy21: UIImageView!
    @IBOutlet weak var froggy22: UIImageView!
    @IBOutlet weak var froggy23: UIImageView!
    @IBOutlet weak var froggy24: UIImageView!
    @IBOutlet weak var froggy25: UIImageView!
    
    
    var score = 0
    var counter = 0

    var timer = Timer()
    var hideTimer = Timer()
    var frogArray = [UIImageView]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highScore = UserDefaults.standard.object(forKey: "highscore")
        
        if (highScore == nil){
            highScoreLabel.text = "0"
        }
        
        if let newScore = highScore as? Int {
            highScoreLabel.text = String(newScore)
        }
        
        scoreLabel.text = "Score: \(score)"
        
        let recognizer1 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer2 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer3 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer4 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer5 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer6 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer7 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer8 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer9 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer10 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer11 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer12 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer13 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer14 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer15 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer16 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer17 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer18 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer19 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer20 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer21 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer22 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer23 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer24 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))
        let recognizer25 = UITapGestureRecognizer(target:self,action:#selector(ViewController.increaseScore))

        
        
        
        froggy1.isUserInteractionEnabled = true
        froggy2.isUserInteractionEnabled = true
        froggy3.isUserInteractionEnabled = true
        froggy4.isUserInteractionEnabled = true
        froggy5.isUserInteractionEnabled = true
        froggy6.isUserInteractionEnabled = true
        froggy7.isUserInteractionEnabled = true
        froggy8.isUserInteractionEnabled = true
        froggy9.isUserInteractionEnabled = true
        froggy10.isUserInteractionEnabled = true
        froggy11.isUserInteractionEnabled = true
        froggy12.isUserInteractionEnabled = true
        froggy13.isUserInteractionEnabled = true
        froggy14.isUserInteractionEnabled = true
        froggy15.isUserInteractionEnabled = true
        froggy16.isUserInteractionEnabled = true
        froggy17.isUserInteractionEnabled = true
        froggy18.isUserInteractionEnabled = true
        froggy19.isUserInteractionEnabled = true
        froggy20.isUserInteractionEnabled = true
        froggy21.isUserInteractionEnabled = true
        froggy22.isUserInteractionEnabled = true
        froggy23.isUserInteractionEnabled = true
        froggy24.isUserInteractionEnabled = true
        froggy25.isUserInteractionEnabled = true


        froggy1.addGestureRecognizer(recognizer1)
        froggy2.addGestureRecognizer(recognizer2)
        froggy3.addGestureRecognizer(recognizer3)
        froggy4.addGestureRecognizer(recognizer4)
        froggy5.addGestureRecognizer(recognizer5)
        froggy6.addGestureRecognizer(recognizer6)
        froggy7.addGestureRecognizer(recognizer7)
        froggy8.addGestureRecognizer(recognizer8)
        froggy9.addGestureRecognizer(recognizer9)
        froggy10.addGestureRecognizer(recognizer10)
        froggy11.addGestureRecognizer(recognizer11)
        froggy12.addGestureRecognizer(recognizer12)
        froggy13.addGestureRecognizer(recognizer13)
        froggy14.addGestureRecognizer(recognizer14)
        froggy15.addGestureRecognizer(recognizer15)
        froggy16.addGestureRecognizer(recognizer16)
        froggy17.addGestureRecognizer(recognizer17)
        froggy18.addGestureRecognizer(recognizer18)
        froggy19.addGestureRecognizer(recognizer19)
        froggy20.addGestureRecognizer(recognizer20)
        froggy21.addGestureRecognizer(recognizer21)
        froggy22.addGestureRecognizer(recognizer22)
        froggy23.addGestureRecognizer(recognizer23)
        froggy24.addGestureRecognizer(recognizer24)
        froggy25.addGestureRecognizer(recognizer25)

        //timers
        counter = 30
        timeLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideFroggy), userInfo: nil, repeats: true)
        
        //frog Array
        frogArray.append(froggy1)
        frogArray.append(froggy2)
        frogArray.append(froggy3)
        frogArray.append(froggy4)
        frogArray.append(froggy5)
        frogArray.append(froggy6)
        frogArray.append(froggy7)
        frogArray.append(froggy8)
        frogArray.append(froggy9)
        frogArray.append(froggy10)
        frogArray.append(froggy11)
        frogArray.append(froggy12)
        frogArray.append(froggy13)
        frogArray.append(froggy14)
        frogArray.append(froggy15)
        frogArray.append(froggy16)
        frogArray.append(froggy17)
        frogArray.append(froggy18)
        frogArray.append(froggy19)
        frogArray.append(froggy20)
        frogArray.append(froggy21)
        frogArray.append(froggy22)
        frogArray.append(froggy23)
        frogArray.append(froggy24)
        frogArray.append(froggy25)


        hideFroggy()

    }
    
    
    @objc func hideFroggy() {
        
        for frog in frogArray {
            frog.isHidden = true
        }
        
        let random = Int(arc4random_uniform(24))
        
        frogArray[random].isHidden = false
        
    }
    
    @objc func countDown(){
        
        counter = counter - 1
        timeLabel.text = "\(counter)"

        if counter == 0{
            
            timer.invalidate()
            hideTimer.invalidate()
            
            for frog in frogArray {
                frog.isHidden = true
            }
            
            if self.score > Int(highScoreLabel.text!)!{
                UserDefaults.standard.set(self.score,forKey:"highscore")
                highScoreLabel.text = String(self.score)
            }

            let alert = UIAlertController(title:"Time",message:"Time is up",preferredStyle:UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title:"OK",style:UIAlertActionStyle.default,handler:nil)

            let replayButton = UIAlertAction(title:"Replay",style:UIAlertActionStyle.default,handler:{(UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideFroggy), userInfo: nil, repeats: true)

            })
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
    
    @objc func increaseScore (){
        score = score + 1
        scoreLabel.text = "Score: \(score)"

    }


}


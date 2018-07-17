//
//  ViewController.swift
//  SwiftTest
//
//  Created by Jiabin wang on 2018/4/18.
//  Copyright © 2018年 Jiabin wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var timeLB: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    
    var counter = 0.0
    var timer = Timer()
    
      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLB.text = String(counter)
    }
    
    @IBAction func resetBtnAction(_ sender: Any) {
        timer.invalidate()
        counter = 0
        self.updateTimeLB()
        pauseBtn.isEnabled = true
        startBtn.isEnabled = true
        
    }
    
    @IBAction func startBtnAction(_ sender: Any) {
        startBtn.isEnabled = false
        pauseBtn.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.updateTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtnAction(_ sender: Any) {
        startBtn.isEnabled = true
        pauseBtn.isEnabled = false
        timer.invalidate()
    }
    
    @objc func updateTimer() {
        counter += 0.1
        self.updateTimeLB()
    }
    
    @objc func updateTimeLB() {
        timeLB.text = String(counter)
    }
}


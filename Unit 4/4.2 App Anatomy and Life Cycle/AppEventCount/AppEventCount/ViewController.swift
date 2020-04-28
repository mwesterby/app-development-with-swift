//
//  ViewController.swift
//  AppEventCount
//
//  Created by Michael Westerby on 28/04/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var didFinishLaunchingLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    @IBOutlet var willTerminateLabel: UILabel!
    
    var didFinishLaunchingCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var willTerminateCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(didFinishLaunchingCount) time(s)"
        didBecomeActiveLabel.text = "The app has become active \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "The app has resigned active \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "The app will enter the foreground \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "The app entered the background \(didEnterBackgroundCount) time(s)"
        willTerminateLabel.text = "The app will terminate \(willTerminateCount) time(s)"
    }

}


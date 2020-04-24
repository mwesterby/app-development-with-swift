//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Michael Westerby on 22/04/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
}


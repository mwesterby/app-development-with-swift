//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Michael Westerby on 16/04/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
        
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is on!")
        } else {
            print("Switch is off.")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}


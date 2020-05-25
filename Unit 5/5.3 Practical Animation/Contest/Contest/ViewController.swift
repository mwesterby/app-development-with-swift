//
//  ViewController.swift
//  Contest
//
//  Created by Michael Westerby on 25/05/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func submitButtonPressed(_ sender: Any) {
        if emailTextField.text == "" {
            print("No email")
            shakeTextField()
        } else {
            performSegue(withIdentifier: "Submit", sender: nil)
        }
    }
    
    func shakeTextField() {
        UIView.animate(withDuration: 0.2, animations: {
            let moveRight = CGAffineTransform(translationX: 10.0, y: 0.0)
            self.emailTextField.transform = moveRight
        }) {(_) in
            UIView.animate(withDuration: 0.2, animations: {
                let moveLeft = CGAffineTransform(translationX: -20.0, y: 0.0)
                self.emailTextField.transform = moveLeft
            }, completion: {(_) in
                UIView.animate(withDuration: 0.2, animations: {
                    let moveCentre = CGAffineTransform(translationX: 0.0, y: 0.0)
                    self.emailTextField.transform = moveCentre
                    self.emailTextField.transform = CGAffineTransform.identity
                })
            })
        }
    }

}


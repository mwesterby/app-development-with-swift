import UIKit

// App Exercise - Heart Rate Delegate

protocol HeartRateReceiverDelegate {
    func heartRateUpdated(to bpm: Int)
}

class HeartRateReceiver {
    var currentHR: Int? {
        didSet {
            if let currentHR = currentHR {
                print("The most recent heart rate reading is \(currentHR).")
                delegate?.heartRateUpdated(to: currentHR)
            } else {
                print("Looks like we can't pick up a heart rate.")
            }
        }
    }
    
    func startHeartRateMonitoringExample() {
        for _ in 1...10 {
            let randomHR = 60 + Int(arc4random_uniform(UInt32(15)))
            currentHR = randomHR
            Thread.sleep(forTimeInterval: 2)
        }
    }
    
    var delegate: HeartRateReceiverDelegate?
    
}

class HeartRateViewController: UIViewController, HeartRateReceiverDelegate {
    func heartRateUpdated(to bpm: Int) {
        print("The user has been shown a heart rate of \(bpm)")
    }
    
    var heartRateLabel: UILabel = UILabel()
}


var heartRateReciever = HeartRateReceiver()
var heartRateViewController = HeartRateViewController()
heartRateReciever.delegate = heartRateViewController
heartRateReciever.startHeartRateMonitoringExample()

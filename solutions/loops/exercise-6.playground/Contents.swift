import UIKit

// App Exercise - Finding Movements

let lowHR = 110
let highHR = 125
var movementHeartRates: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]

for (movement, heartRate) in movementHeartRates {
    if (heartRate > lowHR && heartRate < highHR) {
        print("You could go \(movement)")
    }
}

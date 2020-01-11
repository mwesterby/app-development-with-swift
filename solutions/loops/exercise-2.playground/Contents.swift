import UIKit

// App Exercise - Movements

let movements: [String] = ["Walking", "Running", "Swimming", "Cycling", "Skiing", "Climbing"]

for movement in movements {
    print(movement)
}

var movementHeartRates: [String: Int] = ["Walking": 85, "Running": 120, "Swimming": 130, "Cycling": 128, "Skiing": 114, "Climbing": 129]

for (movement, heartRate) in movementHeartRates {
    print("Your average heart rate while \(movement) was \(heartRate)bpm.")
}

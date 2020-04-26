import UIKit

// App Exercise - Type Properties and Methods

struct RunningWorkout4 {
    static let meterInFeet: Double = 3.28084
    static let mileInMeters: Double = 1600.0
    var distance: Double
    var time: Double
    var elevation: Double
    
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        let distanceInMiles = distance / 1600
        return distanceInMiles * time
    }
}

print(RunningWorkout4.mileTimeFor(distance: 1000, time: 12))
print(RunningWorkout4.meterInFeet)
print(RunningWorkout4.mileInMeters)


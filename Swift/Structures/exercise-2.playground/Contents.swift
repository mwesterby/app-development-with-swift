import UIKit

// App Exercise - Workout Tracking

struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}

var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94

print("In your first run, you travelled \(firstRun.distance)m in \(firstRun.time) minutes and gained \(firstRun.elevation) metres elevation.")


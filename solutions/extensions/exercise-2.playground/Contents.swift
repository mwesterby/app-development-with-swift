import UIKit

// App Exercise - Workout Extensions

struct Workout {
    var distance: Double
    var time: Double
    var averageHR: Int
}

extension Workout: CustomStringConvertible {
    var description: String {
        return "You travelled \(distance)m in \(time) seconds. Your average heart rate was \(averageHR)bpm."
    }
}

extension Workout {
    var speed: Double {
        return distance / time
    }
    func harderWorkout() -> Workout {
        return Workout(distance: self.distance * 2,
                       time: self.time * 2,
                       averageHR: self.averageHR + 40
        )
    }
}

var myWorkout = Workout(distance: 5000, time: 1560, averageHR: 180)
print(myWorkout.description)
var harderWorkout = myWorkout.harderWorkout()
print(harderWorkout.description)

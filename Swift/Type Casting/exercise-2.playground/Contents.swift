import UIKit

// App Exercise - Workout Types

class Workout {
    let time: Double
    let distance: Double
    
    init(time: Double, distance: Double) {
        self.time = time
        self.distance = distance
    }
}

class Run: Workout {
    let cadence: Double
    
    init(cadence: Double, time: Double, distance: Double) {
        self.cadence = cadence
        super.init(time: time, distance: distance)
    }
}

class Swim: Workout {
    let stroke: String
    
    init(stroke: String, time: Double, distance: Double) {
        self.stroke = stroke
        super.init(time: time, distance: distance)
    }
}

var workouts: [Workout] = [
    Run(cadence: 80, time: 1200, distance: 4000),
    Swim(stroke: "Freestyle", time: 32.1, distance: 50),
    Swim(stroke: "Butterfly", time: 36.8, distance: 50),
    Swim(stroke: "Freestyle", time: 523.6, distance: 500),
    Run(cadence: 90, time: 358.9, distance: 1600)
]

func describeRun(runningWorkout: Run) {
    print("You ran \(runningWorkout.distance) metres in \(runningWorkout.time) seconds. Your candence was \(runningWorkout.cadence) steps per minute.")
}

func describeSwim(swimmingWorkout: Swim) {
    print("You swam \(swimmingWorkout.distance) metres in \(swimmingWorkout.time) seconds using a \(swimmingWorkout.stroke) stroke.")
}

for workout in workouts {
    if let run = workout as? Run {
        describeRun(runningWorkout: run)
    } else if let swim = workout as? Swim {
        describeSwim(swimmingWorkout: swim)
    }
}

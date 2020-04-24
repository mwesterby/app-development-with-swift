import UIKit

// App Exercise - Similar Workouts

protocol Workout {
    var distance: Double { get set }
    var time: Double { get set }
}

struct RunningWorkout: Workout {
    var distance: Double = 4.4
    var time: Double = 3.2
}

struct SwimmingWorkout: Workout {
    var distance: Double = 5.3
    var time: Double = 2.2
}


var runningWorkout = RunningWorkout()
var swimmingWorkout = SwimmingWorkout()

func simpleWorkoutDescription(workout: Workout) {
    print("You went \(workout.distance) meters in \(workout.time) seconds.")
}

simpleWorkoutDescription(workout: runningWorkout)
simpleWorkoutDescription(workout: swimmingWorkout)

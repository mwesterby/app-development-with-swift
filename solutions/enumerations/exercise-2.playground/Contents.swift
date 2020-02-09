import UIKit

// App Exercise - Swimming Workouts

struct SwimmingWorkout {
    static var freestyleWorkouts: [SwimmingWorkout] = []
    static var butterflyWorkouts: [SwimmingWorkout] = []
    static var backstrokeWorkouts: [SwimmingWorkout] = []
    static var breaststrokeWorkouts: [SwimmingWorkout] = []
    
    enum Stroke {
       case freestyle, butterfly, backstroke, breaststroke
    }
    
    var distance: Double
    var time: Double
    var stroke: Stroke
    
    func save() {
        switch stroke {
        case .backstroke:
            SwimmingWorkout.backstrokeWorkouts.append(self)
        case .breaststroke:
            SwimmingWorkout.breaststrokeWorkouts.append(self)
        case .butterfly:
            SwimmingWorkout.butterflyWorkouts.append(self)
        case .freestyle:
            SwimmingWorkout.freestyleWorkouts.append(self)
        }
    }
}

var workoutOne = SwimmingWorkout(distance: 10.0, time: 2.4, stroke: .backstroke)
var workoutTwo = SwimmingWorkout(distance: 32.2, time: 87.2, stroke: .breaststroke)

workoutOne.save()
workoutTwo.save()

print(SwimmingWorkout.backstrokeWorkouts)
print(SwimmingWorkout.breaststrokeWorkouts)

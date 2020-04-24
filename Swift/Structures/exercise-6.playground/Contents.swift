import UIKit

// App Exercise - Workout Functions

struct RunningWorkout2 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("You ran for \(distance)m in \(time) minutes and gained \(elevation) metres elevation.")
    }
}

var secondRun = RunningWorkout2(distance: 1000, time: 10, elevation: 40)
secondRun.postWorkoutStats()

// ---------

struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        self.steps = self.steps + 1
    }
}

var steps = Steps(steps: 0, goal: 10)
print(steps.steps)
steps.takeStep()
print(steps.steps)


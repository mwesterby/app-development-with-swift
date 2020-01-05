import UIKit

// App Exercise - Progress Updates

func progressUpdate(steps: Int, goal: Int) {
     let percentOfGoal: Double = (Double(steps)/Double(goal)) * 100
    
     if percentOfGoal < 10 {
         print("You're off to a good start.")
     } else if percentOfGoal < 50 {
         print("You're almost halfway there!")
     } else if percentOfGoal < 90 {
         print("You're almost there!")
     } else if percentOfGoal > 100 {
         print("You beat your goal!")
     }
}

progressUpdate(steps: 500, goal: 10000)
progressUpdate(steps: 4000, goal: 10000)
progressUpdate(steps: 8500, goal: 10000)
progressUpdate(steps: 11000, goal: 10000)

// ------------

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    let requiredSpeed = totalDistance / goalTime
    let currentSpeed = currentDistance / currentTime
    if currentSpeed < requiredSpeed {
        print("You've got to push it just a bit harder!")
    } else {
        print("Keep it up!")
    }
}

pacing(currentDistance: 5, totalDistance: 10, currentTime: 4, goalTime: 10)
pacing(currentDistance: 3, totalDistance: 10, currentTime: 4, goalTime: 10)

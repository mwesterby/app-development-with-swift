import UIKit

// App Exercise - A Functioning App

var steps = 0

func incrementSteps() {
    steps = steps + 1
    print(steps)
}

incrementSteps()
incrementSteps()
incrementSteps()

// ------------

let goal = 10000

func progressUpdate() {
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

progressUpdate()

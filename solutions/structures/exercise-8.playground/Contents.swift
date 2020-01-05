import UIKit

// App Exercise - Mile Times and Congratulations

struct RunningWorkout3 {
    var distance: Double
    var time: Double
    var elevation: Double
    var averageMileTime: Double {
        let milesTravelled = distance / 1600
        return milesTravelled * time
    }
}

var thirdRun = RunningWorkout3(distance: 1000, time: 12, elevation: 30)
print(thirdRun.averageMileTime)

// ---------

struct Steps2 {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Well done! You achieved your goal.")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var steps2 = Steps2(steps: 9999, goal: 10000)
steps2.takeStep()


import UIKit

// App Exercise - Workout or Nil

struct Workout {
    var startTime: Double
    var endTime: Double
    
    init?(startTime: Double, endTime: Double) {
        if((endTime - startTime) < 10) {
            return nil
        } else {
            self.startTime = startTime
            self.endTime = endTime
        }
    }
}

var workout1 = Workout(startTime: 50, endTime: 70)
var workout2 = Workout(startTime: 80, endTime: 85)

print(workout1?.startTime)
print(workout2?.startTime)

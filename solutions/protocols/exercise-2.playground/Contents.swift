import UIKit

// App Exercise - Printable Workouts

class Workout: CustomStringConvertible, Equatable, Comparable {
    var distance: Double
    var time: Double
    var identifier: Int
    var description: String {
        return "Distance: \(distance), Time: \(time), Identifier: \(identifier)"
    }
    
    init(distance: Double, time: Double, identifier: Int) {
        self.distance = distance
        self.time = time
        self.identifier = identifier
    }
    
    static func == (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    static func < (lhs: Workout, rhs: Workout) -> Bool {
        return lhs.identifier < rhs.identifier
    }
}


var workout1 = Workout(distance: 10.4, time: 55.8, identifier: 1)
print(workout1)

var workout2 = Workout(distance: 11.6, time: 12.5, identifier: 2)
print(workout1 == workout2)

var workout3 = Workout(distance: 32.2, time: 17.4, identifier: 3)
var workout4 = Workout(distance: 28.4, time: 39.4, identifier: 4)
var workout5 = Workout(distance: 1.4, time: 11.6, identifier: 5)

var workouts: [Workout] = [workout3, workout1, workout4, workout5, workout2]
var sortedWorkouts: [Workout] = workouts.sorted()

print(sortedWorkouts)

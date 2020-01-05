import UIKit

// App Exercise - Users and Distance

struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

var michael = User(name: "Michael", age: 23, height: 180, weight: 68, activityLevel: 7)

print("\(michael.name) is \(michael.age) years old. He is \(michael.height)cm tall and weighs \(michael.weight)kg. His activity level is \(michael.activityLevel).")

// ---------

struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

var mile = Distance(meters: 1600)
print(mile.feet)

var kilometer = Distance(feet: 3280.84)
print(mile.meters)

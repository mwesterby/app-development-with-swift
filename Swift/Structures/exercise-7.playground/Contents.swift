import UIKit

// Exercise - Computed Properties and Property Observers

struct Rectangle {
    var width: Int
    var height: Int
    var area: Int {
        return width * height
    }
}

var rectangle = Rectangle(width: 4, height: 5)
print(rectangle.area)

// ---------

struct Height2 {
    var heightInInches: Double {
        didSet {
            if heightInCentimeters != heightInInches*2.54 {
                heightInCentimeters = heightInInches*2.54
            }
        }
    }
    var heightInCentimeters: Double {
        didSet {
            if heightInInches != heightInCentimeters/2.54 {
                heightInInches = heightInCentimeters/2.54
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}

var height = Height2(heightInCentimeters: 20)
print(height.heightInInches)
height.heightInCentimeters = 30
print(height.heightInInches)

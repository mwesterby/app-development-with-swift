import UIKit

// Exercise - Create a Protocol

protocol Vehicle {
    var numberOfWheels: Int {get}
    func drive()
}

struct Car: Vehicle {
    var numberOfWheels: Int = 4
    
    func drive() {
        print("Vroom, vroom!")
    }
}

var car1 = Car()

print(car1.numberOfWheels)
car1.drive()

struct Bike: Vehicle {
    var numberOfWheels: Int = 2
    
    func drive() {
        print("Begin pedaling!")
    }
}

var bike1 = Bike()

print(bike1.numberOfWheels)
bike1.drive()

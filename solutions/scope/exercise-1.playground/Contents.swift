import UIKit

// Exercise - Scope

for i in 0..<10 {
    var foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")

// The above print statement will produce a complie error as var foo's scope only extends to the end of the for loop.

// ------

var x = 10
for i in 0..<10 {
    var foo = 55
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")
// The above pront statements will complie as var x is declated in the global scope and therefore accessable to all functions.

// ------

func greeting(greeting: String?, name: String) {
    if let greeting = greeting {
        print("\(greeting), \(name)")
    } else {
        print("Hello \(name)")
    }
}

greeting(greeting: "Hi there", name: "Sara")
greeting(greeting: nil, name: "Sara")

// ------

class Car {
    let make: String
    let model: String
    let year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
}

import UIKit

// Exercise - For-In Loops

for index in 1...100 {
    print(index)
}

// ------

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letters) in alphabet.enumerated() {
    print("\(index): \(letters)")
}

// ------

let states: [String: String] = ["Alabama": "Montgomery", "Alaska": "Juneau", "Arizona": "Phoenix"]

for (stateName, stateCaptial) in states {
    print("\(stateCaptial) is the captial of \(stateName).")
}

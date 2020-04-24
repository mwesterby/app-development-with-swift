import UIKit

// Exercise - Control Transfer Statements

let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letters) in alphabet.enumerated() {
    if (index % 2 == 0) {
        print("\(letters)")
    }
}

// -------

let states: [String: String] = ["Alabama": "Montgomery", "Alaska": "Juneau", "Arizona": "Phoenix"]

for (stateName, stateCaptial) in states {
    print("\(stateCaptial) is the captial of \(stateName).")
    if stateName == "Arizona" {
        print("I found my home!")
        break
    }
}

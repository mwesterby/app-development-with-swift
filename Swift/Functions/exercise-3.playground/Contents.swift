import UIKit

// Exercise - Parameters and Argument Labels

func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home).")
}

introduction(name: "Michael", home: "Rugby", age: 23)

// ------------

func almostAddition(_ firstNumber: Int, to secondNumber: Int) {
    print((firstNumber + secondNumber) / 2)
}

almostAddition(4, to: 10)

// ------------

func multiply(_ firstNumber: Double, by secondNumber: Double) {
    print(firstNumber * secondNumber)
}

multiply(4.2, by: 3.8)


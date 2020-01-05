import UIKit

// Exercise - Return Values

func greeting(name: String) -> String {
    return "Hi \(name)! How are you?"
}

var greetingResult = greeting(name: "Michael")
print(greetingResult)

// ------------

func multiplyAndAddTwo(_ firstNumber: Int, to secondNumber: Int) -> Int {
    return (firstNumber * secondNumber) + 2
}

var multiplyAndAddTwoResult = multiplyAndAddTwo(5, to: 8)
print(multiplyAndAddTwoResult)

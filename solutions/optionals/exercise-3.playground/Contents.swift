import UIKit

// Exercise - Functions and Optionals

func checkAge (age: String) -> Int?{
    if let userAge = Int(age) {
        if (userAge > 18) {
            print("Welcome!")
        } else {
            print("Sorry, but you aren't old enough to use our app.")
        }
        return userAge
    } else {
        print("Sorry, something went wrong. Can you please re-enter your age?")
    }
    return nil
}

let userInputAge: String = "34e"

checkAge(age: userInputAge)
checkAge(age: "23")

print(checkAge(age: "17"))

// ------

var prices = ["Chips": 2.99, "Donuts": 1.89, "Juice": 3.99, "Apple": 0.50, "Banana": 0.25, "Broccoli": 0.99]
var stock = ["Chips": 4, "Donuts": 0, "Juice": 12, "Apple": 6, "Banana": 6, "Broccoli": 3]

func getCost(item: String) -> Double? {
    if (stock[item]! > 0) {
        return prices[item]
    }
    return nil
}

print(getCost(item: "Chips"))

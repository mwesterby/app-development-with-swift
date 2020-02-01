import UIKit

// Exercise - Guard Statements

func calculateArea(x: Double, y: Double) -> (Double?) {
    guard x < 0 || y < 0 else {
        return nil
    }
    return x * y
}

print(calculateArea(x: 4.0, y: 5.5))
print(calculateArea(x: -2.4, y: 7.0))

// -------


func add(a: Int?, b: Int?) -> (Int?) {
    guard let firstNumber = a, let secondNumber = b else {
        return nil
    }
    return firstNumber + secondNumber
}

print(add(a: 6, b: 4))
print(add(a: nil, b: 7))

// ------

struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser() -> (User?){
    guard let firstName = firstNameTextField.text, let lastName = lastNameTextField.text, let age = ageTextField.text else {
        return nil
    }
    return User(firstName: firstName, lastName: lastName, age: age)
}

let newUser = createUser()

if let firstName = newUser?.firstName, let lastName = newUser?.lastName, let age = newUser?.age {
    print("\(firstName) \(lastName) \(age)")
}

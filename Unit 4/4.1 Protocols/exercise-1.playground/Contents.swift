import UIKit

// Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable

class Human: CustomStringConvertible, Equatable, Comparable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "\(name), \(age)"
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

var person1 = Human(name: "Adam", age: 26)
var person2 = Human(name: "Joanne", age: 27)

print(person1)
print(person2)

print(person1 == person2)
print(person1 != person2)

var person3 = Human(name: "John", age: 33)
var person4 = Human(name: "Emily", age: 42)
var person5 = Human(name: "James", age: 23)

var people: [Human] = [person1, person2, person3, person4, person5]

var sortedPeople: [Human] = people.sorted()
print(sortedPeople)

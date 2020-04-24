import UIKit

// Exercise - Passing Closures as Arguments and Syntactic Sugar

func forwards (name1: String, name2: String) -> Bool {
    print(name1)
    print(name2)
    return name1 < name2
}

var friends: [String] = ["James", "Joe", "Craig", "Matt", "Judith", "Izzy"]

var sortedCollection1 = friends.sorted(by: forwards(name1:name2:))
print(sortedCollection1)

var sortedCollection2 = friends.sorted { (name1: String, name2: String) -> Bool in
    return name1 < name2
}
print(sortedCollection2)

var sortedCollection3 = friends.sorted { return $0 < $1 }
print(sortedCollection3)

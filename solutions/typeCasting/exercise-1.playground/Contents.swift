import UIKit

// Exercise - Type Casting and Inspection

var items: [Any] = [5, "Bill", 6.7, true]

print(items)

for item in items {
    if let string = item as? String {
        print("The String has a value of \(string)")
    } else if let integer = item as? Int {
        print("The Int has a value of \(integer)")
    } else if let boolean = item as? Bool {
        print("The Bool has a value of \(boolean)")
    } else if let double = item as? Double {
        print("The Double has a value of \(double)")
    }
}

// ------


var dictionary:[String: Any] = ["First": 1.1, "Second": true, "Third": 3, "Fourth": "Four", "Fifth": false, "Sixth": "6"]
print(dictionary)

var total: Double = 0

for (_, value) in dictionary {
    if let number = value as? Int {
        total = total + Double(number)
    } else if let number = value as? Double {
        total = total + number
    } else if value is String {
        total = total + Double(1)
    } else if let boolean = value as? Bool {
        if (boolean) {
            total = total + 2
        } else {
            total = total - 3
        }
    }
}

print(total)

// ------

var total2: Double = 0

for (_, value) in dictionary {
    if let number = value as? Int {
        total2 = total2 + Double(number)
    } else if let number = value as? Double {
        total2 = total2 + number
    } else if let string = value as? String {
        if let validNumber = Double(string) {
            total2 = total2 + validNumber
        }
    }
}

print(total2)

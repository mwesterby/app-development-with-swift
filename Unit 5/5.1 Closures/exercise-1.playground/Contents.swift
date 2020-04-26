import UIKit

// Exercise - Create Closures

var blankClosure = { () -> Void in
    return
}

let fourClosure = { () -> Int in
    return 4
}

print(fourClosure())
print(fourClosure())
print(fourClosure())
print(fourClosure())

let greeting = { (name: String) -> Void in
    print(name)
}

greeting("Gary")
greeting("Jane")
greeting("Rick")
greeting("Beth")

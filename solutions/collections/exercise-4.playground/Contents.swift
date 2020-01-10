import UIKit

// App Exercise - Pacing

var paces: [String: Double] = ["Easy": 10.0, "Medium": 8.0, "Fast": 6.0]
print(paces)

paces["Sprint"] = 4.0
print(paces)

paces.updateValue(7.5, forKey: "Medium")
paces.updateValue(5.8, forKey: "Fast")
print(paces)

paces.removeValue(forKey: "Sprint")
print(paces)


if let mediumPace = paces["Medium"] {
    print("Okay! I'll keep you at a \(mediumPace) minute mile pace.")
}

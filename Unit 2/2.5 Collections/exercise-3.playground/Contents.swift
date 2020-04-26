import UIKit

// Exercise - Dictionaries

var daysInMonths: [String: Int] = ["January": 31, "February": 28, "March": 31]
print(daysInMonths)

daysInMonths["April"] = 30
print(daysInMonths)

daysInMonths.updateValue(29, forKey: "February")
print(daysInMonths)

if let daysInJan = daysInMonths["January"] {
    print("January has \(daysInJan) days")
}

// ---------

let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]

var shapesAndColors: [String: [String]] = ["Shapes": shapesArray, "Colors": colorsArray]
print(shapesAndColors)

if let colors = shapesAndColors["Colors"] {
    print(colors[2])
}

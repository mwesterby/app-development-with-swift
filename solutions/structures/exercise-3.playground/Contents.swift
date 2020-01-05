import UIKit

// Exercise - Memberwise and Custom Initializers

// --------- Memberwise Initializers

struct GPS2 {
    var latitude: Double
    var longitude: Double
}

let somePlace2 = GPS2(latitude: 51.514004, longitude: 0.125226)

print(somePlace2.latitude)
print(somePlace2.longitude)

// ---------

struct Book2 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

var favoriteBook2 = Book2(title: "Harry Potter", author: "J. K. Rowling", pages: 223, price: 14.99)

print("My favorite book is called \(favoriteBook2.title), written by \(favoriteBook2.author). It has \(favoriteBook2.pages) pages and costs £\(favoriteBook2.price)")

// --------- Custom Initializers

struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)




import UIKit

// Exercise - Structs, Instances, and Default Values

struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

var somePlace = GPS()

print(somePlace.latitude)
print(somePlace.longitude)

somePlace.latitude =  51.514004
somePlace.longitude = 0.125226

print(somePlace.latitude)
print(somePlace.longitude)

// ---------

struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}

var favoriteBook = Book()
print(favoriteBook.title)

favoriteBook.title = "Harry Potter"
favoriteBook.author = "J. K. Rowling"
favoriteBook.pages = 223
favoriteBook.price = 14.99

print(favoriteBook.title)
print(favoriteBook.author)
print(favoriteBook.pages)
print(favoriteBook.price)

import UIKit

// Exercise - Methods

struct Book3 {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() {
        print("This book is called \(title), written by \(author). It has \(pages) pages and costs £\(price)")
    }
}

let book = Book3(title: "Harry Potter", author: "J. K. Rowling", pages: 223, price: 14.99)

book.description()

// ---------

struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes = likes + 1
    }
}

var post = Post(message: "Hello, World!", likes: 1, numberOfComments: 1)
print(post.likes)
post.like()
print(post.likes)

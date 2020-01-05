import UIKit

// Exercise - Type Properties and Methods

struct User2 {
    static var currentUser = User2(userName: "Michael", email: "michael@email.com", age: 23)
    var userName: String
    var email: String
    var age: Int
    
    static func logIn(user: User2) {
        currentUser = user
        print("\(user.userName) has logged in.")
    }
}

print(User2.currentUser.userName)
print(User2.currentUser.email)
print(User2.currentUser.age)

var user2 = User2(userName: "James", email: "james@email.com", age: 23)
User2.logIn(user: user2)


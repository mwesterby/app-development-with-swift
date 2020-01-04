import UIKit

// --------- Structs, Instances, and Default Values

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

// --------- Workout Tracking

struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}

var firstRun = RunningWorkout()
print(firstRun.distance)
print(firstRun.time)
print(firstRun.elevation)

firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94

print("In your first run, you travelled \(firstRun.distance)m in \(firstRun.time) minutes and gained \(firstRun.elevation) metres elevation.")

// --------- Memberwise Initializers

struct GPS2 {
    var latitude: Double
    var longitude: Double
}

let somePlace2 = GPS(latitude: 51.514004, longitude: 0.125226)

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

// --------- Users and Distance

struct User {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var activityLevel: Int
}

var michael = User(name: "Michael", age: 23, height: 180, weight: 68, activityLevel: 7)

print("\(michael.name) is \(michael.age) years old. He is \(michael.height)cm tall and weighs \(michael.weight)kg. His activity level is \(michael.activityLevel).")

// ---------

struct Distance {
    var meters: Double
    var feet: Double
    
    init(meters: Double) {
        self.meters = meters
        self.feet = meters * 3.28084
    }
    init(feet: Double) {
        self.feet = feet
        self.meters = feet / 3.28084
    }
}

var mile = Distance(meters: 1600)
print(mile.feet)

var kilometer = Distance(feet: 3280.84)
print(mile.meters)

// --------- Methods

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

// --------- Workout Functions

struct RunningWorkout2 {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStats() {
        print("You ran for \(distance)m in \(time) minutes and gained \(elevation) metres elevation.")
    }
}

var secondRun = RunningWorkout2(distance: 1000, time: 10, elevation: 40)
secondRun.postWorkoutStats()

// ---------

struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep() {
        self.steps = self.steps + 1
    }
}

var steps = Steps(steps: 0, goal: 10)
print(steps.steps)
steps.takeStep()
print(steps.steps)

// --------- Computed Properties and Property Observers

struct Rectangle {
    var width: Int
    var height: Int
    var area: Int {
        return width * height
    }
}

var rectangle = Rectangle(width: 4, height: 5)
print(rectangle.area)

// ---------

struct Height2 {
    var heightInInches: Double {
        didSet {
            if heightInCentimeters != heightInInches*2.54 {
                heightInCentimeters = heightInInches*2.54
            }
        }
    }
    var heightInCentimeters: Double {
        didSet {
            if heightInInches != heightInCentimeters/2.54 {
                heightInInches = heightInCentimeters/2.54
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}

var height = Height2(heightInCentimeters: 20)
print(height.heightInInches)
height.heightInCentimeters = 30
print(height.heightInInches)

// --------- Mile Times and Congratulations

struct RunningWorkout3 {
    var distance: Double
    var time: Double
    var elevation: Double
    var averageMileTime: Double {
        let milesTravelled = distance / 1600
        return milesTravelled * time
    }
}

var thirdRun = RunningWorkout3(distance: 1000, time: 12, elevation: 30)
print(thirdRun.averageMileTime)

// ---------

struct Steps2 {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Well done! You achieved your goal.")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

var steps2 = Steps2(steps: 9999, goal: 10000)
steps2.takeStep()

// --------- Type Properties and Methods

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

// --------- Type Properties and Methods

struct RunningWorkout4 {
    static let meterInFeet: Double = 3.28084
    static let mileInMeters: Double = 1600.0
    var distance: Double
    var time: Double
    var elevation: Double
    
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        let distanceInMiles = distance / 1600
        return distanceInMiles * time
    }
}

print(RunningWorkout4.mileTimeFor(distance: 1000, time: 12))
print(RunningWorkout4.meterInFeet)
print(RunningWorkout4.mileInMeters)

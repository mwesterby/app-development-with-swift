import Foundation

func introduceMyself() {
    print("Hello, my name is Michael")
}

introduceMyself()

// ------------

func magicEightBall() {
    let randomNum = arc4random_uniform(UInt32(5))
    switch randomNum {
    case 1:
        print("Number 1 was generated")
    case 2:
        print("Number 2 was generated")
    case 3:
        print("Number 3 was generated")
    case 4:
        print("Number 4 was generated")
    default:
        print("I don't know that number")
    }
}

magicEightBall()

// ------------

var steps = 0

func incrementSteps() {
    steps = steps + 1
    print(steps)
}

incrementSteps()
incrementSteps()
incrementSteps()

// ------------

let goal = 10000

func progressUpdate() {
    let percentOfGoal: Double = (Double(steps)/Double(goal)) * 100
   
    if percentOfGoal < 10 {
        print("You're off to a good start.")
    } else if percentOfGoal < 50 {
        print("You're almost halfway there!")
    } else if percentOfGoal < 90 {
        print("You're almost there!")
    } else if percentOfGoal > 100 {
        print("You beat your goal!")
    }
}

progressUpdate()

// ------------

func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home).")
}

introduction(name: "Michael", home: "Rugby", age: 23)

// ------------

func almostAddition(_ firstNumber: Int, to secondNumber: Int) {
    print((firstNumber + secondNumber) / 2)
}

almostAddition(4, to: 10)

// ------------

func multiply(_ firstNumber: Double, by secondNumber: Double) {
    print(firstNumber * secondNumber)
}

multiply(4.2, by: 3.8)

// ------------

func progressUpdate(steps: Int, goal: Int) {
     let percentOfGoal: Double = (Double(steps)/Double(goal)) * 100
    
     if percentOfGoal < 10 {
         print("You're off to a good start.")
     } else if percentOfGoal < 50 {
         print("You're almost halfway there!")
     } else if percentOfGoal < 90 {
         print("You're almost there!")
     } else if percentOfGoal > 100 {
         print("You beat your goal!")
     }
}

progressUpdate(steps: 500, goal: 10000)
progressUpdate(steps: 4000, goal: 10000)
progressUpdate(steps: 8500, goal: 10000)
progressUpdate(steps: 11000, goal: 10000)

// ------------

func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    let requiredSpeed = totalDistance / goalTime
    let currentSpeed = currentDistance / currentTime
    if currentSpeed < requiredSpeed {
        print("You've got to push it just a bit harder!")
    } else {
        print("Keep it up!")
    }
}

pacing(currentDistance: 5, totalDistance: 10, currentTime: 4, goalTime: 10)
pacing(currentDistance: 3, totalDistance: 10, currentTime: 4, goalTime: 10)

// ------------

func greeting(name: String) -> String {
    return "Hi \(name)! How are you?"
}

var greetingResult = greeting(name: "Michael")
print(greetingResult)

// ------------

func multiplyAndAddTwo(_ firstNumber: Int, to secondNumber: Int) -> Int {
    return (firstNumber * secondNumber) + 2
}

var multiplyAndAddTwoResult = multiplyAndAddTwo(5, to: 8)
print(multiplyAndAddTwoResult)

// ------------

func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    let remainingDistance = totalDistance - currentDistance
    let currentSpeed = currentDistance / currentTime
    return remainingDistance / currentSpeed
}

var calculatePaceResult = calculatePace(currentDistance: 5, totalDistance: 10, currentTime: 30)
print(calculatePaceResult)

func pacing2(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let timeRemaining = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    if (currentTime + timeRemaining) <= goalTime {
        return "Keep it up!"
    } else {
        return "You've got to push it just a bit harder!"
    }
}

var pacingReturnValue = pacing2(currentDistance: 5, totalDistance: 10, currentTime: 30, goalTime: 50)
print(pacingReturnValue)

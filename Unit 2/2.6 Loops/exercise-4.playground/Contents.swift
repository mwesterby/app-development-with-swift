import UIKit

// App Exercise - While Loops

let cadence: Double = 180
var testSteps = 0

while testSteps < 10 {
    print("Take a step")
    testSteps = testSteps + 1
    Thread.sleep(forTimeInterval: 60/cadence)
}

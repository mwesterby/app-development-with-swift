import UIKit

// App Exercise - Separating Functions

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

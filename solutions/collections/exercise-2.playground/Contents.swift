import UIKit

// App Exercise - Activity Challenge

var walkingChallenges: [String] = ["Walk 3 miles a day", "Walk 5 times a day"]
var runningChallenges: [String] = ["Run 4 km in a day", "Run 3 times a week"]

var challenges = [walkingChallenges, runningChallenges]

print(challenges[1][0])

challenges.removeAll()

print(challenges)

var commitedChallenges: [String] = [walkingChallenges[0]]

if (commitedChallenges.isEmpty) {
    print("Please commit to a challenge")
} else if (commitedChallenges.count == 1) {
    print("The challenge you have chosen is \(commitedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}

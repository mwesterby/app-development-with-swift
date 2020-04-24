import UIKit

// Exercise - Collection Functions

let testScores = [65, 80, 88, 90, 47]

let testScoresPlusOne = testScores.map({$0 + 1})
print(testScoresPlusOne)

let schoolSubjects = ["Math", "Computer Science", "Gym", "English", "Biology"]

let longSubjects = schoolSubjects.filter({$0.count > 4})
print(longSubjects)

let damageTaken = [25, 10, 15, 30, 20]

let remainingHealth = damageTaken.reduce(100, {$0 - $1})
print(remainingHealth)

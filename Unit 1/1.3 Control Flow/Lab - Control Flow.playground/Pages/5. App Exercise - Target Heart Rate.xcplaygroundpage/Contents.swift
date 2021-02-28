/*:
 ## App Exercise - Target Heart Rate
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 You decide that you want your fitness tracker to have a feature that helps users stay inside specified heart rate zones while they are working out. You'll display a message to the user telling them to go a little faster to increase their heart rate if they are below the target, tell them that they are spot on if they are in the target, and tell them to slow it down a little if they are over the target.
 
 Create constants `isInTarget`, `isBelowTarget`, and `isAboveTarget` that equal expressions that evaluate to whether or not `currentHR` is between the lower and upper bounds, below the lower bound, and above the upper bound, respectively. Then write an if-else-if statement that will print "You're right on track!" if the user is inside the target zone, "You're doing great, but try to push it a bit!" if the user is below the target zone, and "You're on fire! Slow it down just a bit." if the user is above the target zone.
 */
let targetLowerBound = 120
let targetUpperBound = 150
let currentHR = 147

let isInTarget = currentHR >= targetLowerBound && currentHR <= targetUpperBound
let isBelowTarget = currentHR < targetLowerBound
let isAboveTarget = currentHR > targetUpperBound

if isInTarget {
    print("You're right on track!")
} else if isBelowTarget {
    print("You're doing great, but try to push it a bit!")
} else if isAboveTarget {
    print("You're on fire! Slow it down just a bit.")
}

//: [Previous](@previous)  |  page 5 of 9  |  [Next: Exercise - Switch Statements](@next)

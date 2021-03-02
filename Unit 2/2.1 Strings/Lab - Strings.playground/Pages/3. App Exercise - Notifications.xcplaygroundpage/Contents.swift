/*:
 ## App Exercise - Notifications
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 In your app, you may want to search for other users. This would be easier with first and last names stored separately. This is not an uncommon practice.
 
 Create `firstName` and `lastName` constants and assign them string literals representing a user's first name and last name, respectively. Create a `fullName` constant that uses string concatenation to combine `firstName` and `lastName`. Print the value of `fullName`.
 */
let firstName = "John"
let lastName = "Smith"
let fullName = firstName + " " + lastName
print(fullName)
/*:
 Occasionally users of your fitness tracking app will beat previous goals or records. You may want to notify them when this happens for encouragement purposes. Create a new constant `congratulations` and assign it a string literal that uses string interpolation to create the following string:
 
 - "Congratulations, <INSERT USER'S FULL NAME HERE>! You beat your previous daily high score of <INSERT PREVIOUS HIGHEST STEPS HERE> steps by walking <INSERT NEW HIGHEST STEPS HERE> steps yesterday!"
 
 Insert `fullName`, `previousBest` and `newBest` where indicated. Print the value of `congratulations`.
 */
let previousBest = 14392
let newBest = 15125

let congratulations = "Congratulations, \(fullName)! You beat your previous daily high score of \(previousBest) steps by walking \(newBest) steps yesterday!"
print(congratulations)
//: [Previous](@previous)  |  page 3 of 5  |  [Next: Exercise - String Equality and Comparison](@next)

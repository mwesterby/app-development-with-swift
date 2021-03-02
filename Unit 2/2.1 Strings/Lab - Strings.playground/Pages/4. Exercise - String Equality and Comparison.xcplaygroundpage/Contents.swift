/*:
 ## Exercise - String Equality and Comparison
 
 Create two constants, `nameInCaps` and `name`. Assign `nameInCaps` your name as a string literal with proper capitalization. Assign `name` your name as a string literal in all lowercase. Write an if-else statement that checks to see if `nameInCaps` and `name` are the same. If they are, print "The two strings are equal", otherwise print "The two strings are not equal."
 */
let nameInCaps = "Michael"
let name = "michael"

if nameInCaps == name {
    print("The two strings are equal")
} else {
    print("The two strings are not equal.")
}
/*:
 Write a new if-else statement that also checks to see if `nameInCaps` and `name` are the same. However, this time use the `lowercased()` method on each constant to compare the lowercase version of the strings. If they are equal, print the following statement using string interpolations:
 
 - "<INSERT LOWERCASED VERSION OF `nameInCaps` HERE> and <INSERT LOWERCASED VERSION OF `name` HERE> are the same."
 
 If they are not equal, print the following statement using string interpolation:
 
 - "<INSERT LOWERCASED VERSION OF `nameInCaps` HERE> and <INSERT LOWERCASED VERSION OF `name` HERE> are not the same."
 */
if nameInCaps.lowercased() == name.lowercased() {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are the same.")
} else {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are not the same.")
}

/*:
 Imagine you are looking through a list of names to find any that end in "Jr." Write an if statement below that will check if `junior` has the suffix "Jr.". If it does, print "We found a second generation name!"
 */
let junior = "Cal Ripken Jr."

if junior.hasSuffix("Jr.") {
    print("We found a second generation name!")
}
/*:
 Suppose you are trying to find a document on your computer that contains Hamlet's famous soliloquy written by Shakespeare. You write a simple app that will check every document to see if it contains the phrase "to be, or not to be". You decide to do part of this with the `contains(_:)` method. Write an if statement below that will check if `textToSearchThrough` contains `textToSearchFor`. If it does, print "I found it!" Be sure to make this functionality case insensitive.
 */
import Foundation
let textToSearchThrough = "To be, or not to be--that is the question"
let textToSearchFor = "to be, or not to be"

if textToSearchThrough.lowercased().contains(textToSearchFor.lowercased()) {
    print("I found it!")
}
/*:
 Print to the console the number of characters in your name by using the `count` property on `name`.
 */
print(name.count)
//: [Previous](@previous)  |  page 4 of 5  |  [Next: App Exercise - Password Entry and User Search](@next)

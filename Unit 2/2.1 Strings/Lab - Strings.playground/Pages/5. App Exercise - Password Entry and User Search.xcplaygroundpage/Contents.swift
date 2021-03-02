/*:
 ## App Exercise - Password Entry and User Search

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 You think it might be fun to incorporate some friendly competition into your fitness tracking app. Users will be able to compete with friends in small fitness challenges. However, to do this users will need a password-protected account. Write an if-else statement below that will check that the entered user name and password match the stored user name and password. While the password should be case sensitive, users should be able to log in even if their entered user name has the wrong capitalization. If the user name and password match, print "You are now logged in!" Otherwise, print "Please check your user name and password and try again."
 */
let storedUserName = "TheFittest11"
let storedPassword = "a8H1LuK91"
let enteredUserName = "thefittest11"
let enteredPassword: String = "a8H1Luk9"

if enteredUserName.lowercased() == storedUserName.lowercased() && enteredPassword == storedPassword {
    print("You are now logged in!")
} else {
    print("Please check your user name and password and try again.")
}
/*:
 Now that users can log in, they need to be able to search through a list of users to find their friends. This might normally be done by having the user enter a name, and then looping through all user names to see if a user name contains the search term entered. You'll learn about loops later, so for now you'll just work through one cycle of that. Imagine you are searching for a friend whose user name is StepChallenger. You enter "step" into a search bar and the app begins to search. When the app comes to the user name "stepchallenger," it checks to see if "StepChallenger" contains "step."

 Using `userName` and `searchName` below, write an if-else statement that checks to see if `userName` contains the search term. The search should *not* be case sensitive.
 */
import Foundation
let userName = "StepChallenger"
let searchName = "step"

if userName.lowercased().contains(searchName) {
    print("Found a match")
} else {
    print("Did not find a match")
}
/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 5 of 5

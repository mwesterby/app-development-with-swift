/*:
 ## Exercise - If and If-Else Statements
 
 Imagine you're creating a machine that will count your money for you and tell you how wealthy you are based on how much money you have. A variable `dollars` has been given to you with a value of 0. Write an if statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0. Observe what is printed to the console.
 */
var dollars = 0

if (dollars == 0) {
    print("Sorry, kid. You're broke!")
}
/*:
 `dollars` has been updated below to have a value of 10. Write an an if-else statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0, but prints "You've got some spending money!" otherwise. Observe what is printed to the console.
 */
dollars = 10

if (dollars == 0) {
    print("Sorry, kid. You're broke!")
} else {
    print("You've got some spending money!")
}
/*:
 `dollars` has been updated below to have a value of 105. Write an an if-else-if statement that prints "Sorry, kid. You're broke!" if `dollars` has a value of 0, prints "You've got some spending money!" if `dollars` is less than 100, and prints "Looks to me like you're rich!" otherwise. Observe what is printed to the console.
 */
dollars = 105

if (dollars == 0) {
    print("Sorry, kid. You're broke!")
} else if (dollars < 100){
    print("You've got some spending money!")
} else {
    print("Looks to me like you're rich!")
}
//: [Previous](@previous)  |  page 2 of 9  |  [Next: App Exercise - Fitness Decisions](@next)

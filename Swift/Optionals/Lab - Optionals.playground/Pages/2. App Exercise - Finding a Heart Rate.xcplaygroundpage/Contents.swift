/*:
 ## App Exercise - Finding a Heart Rate
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Many APIs that give you information gathered by the hardware return optionals. For example, an API for working with a heart rate monitor may give you `nil` if the heart rate monitor is adjusted poorly and cannot properly read the user's heart rate.
 
 Declare a variable `heartRate` of type `Int?` and set it to `nil`. Print the value.
 */


/*:
 In this example, if the user fixes the positioning of the heart rate monitor, the app may get a proper heart rate reading. Below, update the value of `heartRate` to 74. Print the value.
 */


/*:
 As you've done in other app exercises, create a variable `hrAverage` of type `Int` and use the values stored below and the value of `heartRate` to calculate an average heart rate.
 */
let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79 
let oldHR4 = 70

/*:
 If you didn't unwrap the value of `heartRate`, you've probably noticed that you cannot perform mathematical operations on an optional value. You will first need to unwrap `heartRate`.
 
 Safely unwrap the value of `heartRate` using optional binding. If it has a value, calculate the average heart rate using that value and the older heart rates stored above. If it doesn't have a value, calculate the average heart rate using only the older heart rates. In each case, print the value of `hrAverage`.
 */


//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Functions and Optionals](@next)

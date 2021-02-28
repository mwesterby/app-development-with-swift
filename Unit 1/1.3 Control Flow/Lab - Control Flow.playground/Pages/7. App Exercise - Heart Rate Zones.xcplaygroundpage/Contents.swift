/*:
 ## App Exercise - Heart Rate Zones
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 If you completed the Target Heart Rate exercise, you showed different statements to the user based on whether or not the user's heart rate was inside of a target zone. Now you decide to just tell them what zone they are in rather than tell them what zone to be in.
 
 Write a switch statement that will print different statements based on what range `currentHR` falls into. Below is a list of ranges and the associated statements
 
 - 100-120: "You are in the Very Light zone. Activity in this zone helps with recovery."
 - 121-140: "You are in the Light zone. Activity in this zone helps improve basice endurance and fat burning."
 - 141-160: "You are in the Moderate zone. Activity in this zone helps improve aerobic fitness."
 - 161-180: "You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions."
 - 181-200: "You are in the Maximum zone. Activity in this zone helps fit athletes develop speed."
 
 If `currentHR` is above the listed zones, print some kind of warning asking the user to slow down.
 */
let currentHR = 128

switch currentHR {
case 100...120:
    print("You are in the Very Light zone. Activity in this zone helps with recovery.")
case 121...140:
    print("You are in the Light zone. Activity in this zone helps improve basice endurance and fat burning.")
case 141...160:
    print("You are in the Moderate zone. Activity in this zone helps improve aerobic fitness.")
case 161...180:
    print("You are in the Hard zone. Activity in this zone increases maximum performance capacity for shorter sessions.")
case 181...200:
    print("You are in the Maximum zone. Activity in this zone helps fit athletes develop speed.")
default:
    print("Slow down!")
}
//: [Previous](@previous)  |  page 7 of 9  |  [Next: Exercise - Ternary Operator](@next)

import UIKit

// Exercise - While Loops

var diceRoll = 0

while (diceRoll != 6) {
    diceRoll = Int(arc4random_uniform(6) + 1)
    print(diceRoll)
}

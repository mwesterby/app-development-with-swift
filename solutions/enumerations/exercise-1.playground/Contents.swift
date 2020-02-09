import UIKit

// Exercise - Enumerations

enum Suit {
    case clubs, spades, diamonds, hearts
}

var cardInHand: Suit = .hearts
print(cardInHand)

cardInHand = .spades
print(cardInHand)

func getFortune(cardSuit: Suit) {
    switch cardSuit {
    case .clubs:
        print("You will soon find what you seek.")
    case .diamonds:
        print("Tomorrow will be your lucky day.")
    case .hearts:
        print("An old friend will make a return.")
    case .spades:
        print("You already hold the key to your future.")
    }
}

getFortune(cardSuit: .clubs)
getFortune(cardSuit: .diamonds)
getFortune(cardSuit: .hearts)
getFortune(cardSuit: .spades)


struct Card {
    enum Value {
        case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    }
    
    var suit: Suit
    var value: Value
}

var firstCard = Card(suit: .clubs, value: .ace)
var secondCard = Card(suit: .spades, value: .four)

print("The first card is the \(firstCard.value) of \(firstCard.suit)")
print("The second card is the \(secondCard.value) of \(secondCard.suit)")

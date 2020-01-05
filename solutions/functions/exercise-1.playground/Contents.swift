import UIKit

// Exercise - Create Functions

func introduceMyself() {
    print("Hello, my name is Michael")
}

introduceMyself()

// ------------

func magicEightBall() {
    let randomNum = arc4random_uniform(UInt32(5))
    switch randomNum {
    case 1:
        print("Number 1 was generated")
    case 2:
        print("Number 2 was generated")
    case 3:
        print("Number 3 was generated")
    case 4:
        print("Number 4 was generated")
    default:
        print("I don't know that number")
    }
}

magicEightBall()

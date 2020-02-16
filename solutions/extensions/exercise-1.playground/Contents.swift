import UIKit

// Exercise - Extensions

extension Character {
    func isVowel() -> Bool {
        let vowels: [Character] = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        return vowels.contains(self)
    }
}


let myVowel: Character = "a"
let myConsonant: Character = "b"

print(myVowel.isVowel())
print(myConsonant.isVowel())

// -----

struct Rectangle {
    var length: Double
    var width: Double
}

extension Rectangle {
    func half() -> Rectangle {
        return Rectangle(length: length/2, width: width/2)
    }
    mutating func halved() {
        let halvedRectangle = self.half()
        self.length = halvedRectangle.length
        self.width = halvedRectangle.width
    }
}

var myRectangle = Rectangle(length: 10, width: 5)
print(myRectangle)
var mySmallerRectangle = myRectangle.half()
print(mySmallerRectangle)
myRectangle.halved()
print(myRectangle)

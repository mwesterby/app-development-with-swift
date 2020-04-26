import UIKit

// Exercise - Define a Base Class

class Spaceship {
    var name: String = ""
    var health: Int = 0
    var position: Int = 0
    
    func moveLeft() {
        position = position - 1
    }
    func moveRight() {
        position = position + 1
    }
    func wasHit() {
        health = health - 5
        if (health <= 0) {
            print("Sorry. Your ship was hit one too many times. Do you want to play again?")
        }
    }
}

let falcon = Spaceship()

falcon.name = "Falcon"
falcon.moveLeft()
print(falcon.position)
falcon.moveLeft()
print(falcon.position)
falcon.moveRight()
print(falcon.position)
falcon.wasHit()
print(falcon.health)





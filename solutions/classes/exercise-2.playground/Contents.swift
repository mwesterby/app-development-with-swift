import UIKit

class Spaceship {
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
}

class Fighter: Spaceship {
    var wepon = ""
    var remainingFirePower = 5
    
    func fire() {
        if (remainingFirePower > 0) {
            remainingFirePower = remainingFirePower - 1
        } else {
            print("You have no more fire power.")
        }
    }
}

let destroyer = Fighter()

destroyer.wepon = "Laser"
destroyer.remainingFirePower = 10
destroyer.name = "Destroyer"
print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)

// print(falcon.wepon) won't work as falcon is an instance of the Spaceship class which does not have a wepon variable defined.

destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)


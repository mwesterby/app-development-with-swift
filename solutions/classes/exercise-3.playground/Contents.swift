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
    var weapon = ""
    var remainingFirePower = 5
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    override func wasHit() {
        if (shieldStrength > 0) {
            shieldStrength = shieldStrength - 5
        } else {
            super.wasHit()
        }
    }
}

let defender = ShieldedShip()

defender.name = "Defender"
defender.weapon = "Cannon"
defender.moveRight()
print(defender.position)
defender.fire()
print(defender.remainingFirePower)
defender.wasHit()
print(defender.shieldStrength)
print(defender.health)


import UIKit

class Spaceship {
    let name: String
    var health: Int
    var position: Int

    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
}

let falcon = Spaceship(name: "Falcon", health: 100, position: 0)

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
    
    init(name: String, health: Int, position: Int, wepon: String, remainingFirePower: Int ) {
        self.weapon = wepon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
    
    init(name: String, health: Int, position: Int, wepon: String, remainingFirePower: Int, shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, wepon: wepon, remainingFirePower: remainingFirePower)
    }
}

let defender = ShieldedShip(name: "Defender", health: 100, position: 0, wepon: "Cannon", remainingFirePower: 10, shieldStrength: 25)

let sameShip = falcon
print(sameShip.position)
print(falcon.position)
sameShip.moveLeft()
print(sameShip.position)
print(falcon.position)

// The position changed on both sameShip and falcon because they both reference the same address. An update to one instance will update all those which share the same address. If both were structs instead of classes, you would be assigining a literal value to the variable. If you create a variable equal to another structure variable, the value is copied. Operations performed on either variable will be reflected only on the modified variable.

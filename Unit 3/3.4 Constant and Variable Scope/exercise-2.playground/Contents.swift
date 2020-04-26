import UIKit

// App Exercise - Step Competition

struct User {
    var name: String
    var stepsToday: Int
    
    init(name: String, stepsToday: Int) {
        self.name = name
        self.stepsToday = stepsToday
    }
    
    init?(name: String?, stepsToday: Int?) {
        if let name = name, let stepsToday = stepsToday {
            self.name = name
            self.stepsToday = stepsToday
        } else {
            return nil
        }
    }
}

let stepMaster = User(name: "StepMaster", stepsToday: 8394)
let activeSitter = User(name: "ActiveSitter", stepsToday: 9132)
let monsterWalker = User(name: "MonsterWalker", stepsToday: 7193)

let competitors = [stepMaster, activeSitter, monsterWalker]

func getWinner(competitors: [User]) -> User? {
    var topCompetitor: User?
    
    for competitor in competitors {
        if let currentTopCompetitor = topCompetitor {
            if competitor.stepsToday > currentTopCompetitor.stepsToday {
                topCompetitor = competitor
            }
        } else {
            topCompetitor = competitor
        }
    }
    return topCompetitor
}

var topCompetitor = getWinner(competitors: competitors)
print(topCompetitor?.name)



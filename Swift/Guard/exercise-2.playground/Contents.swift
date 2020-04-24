import UIKit

// App Exercise - Guard

struct Workout {
    var startTime: Double
    var endTime: Double
    
    init?(startTime: Double, endTime: Double) {
        guard (endTime - startTime) < 10 else {
            return nil
        }
        self.startTime = startTime
        self.endTime = endTime
    }
}

// ------

struct Food {
    var name: String
    var calories: Int
}

let foodTextField = UITextField()
let caloriesTextField = UITextField()

foodTextField.text = "Banana"
caloriesTextField.text = "23"

func logFood() -> (Food?) {
    guard let food = foodTextField.text, let calories = caloriesTextField.text else {
        return nil
    }
    guard let realCalories = Int(calories) else {
        return nil
    }
    return Food(name: food, calories: realCalories)
}

var foodLogged = logFood()
if let result = foodLogged {
    print(result.name)
    print(result.calories)
}

import UIKit

// App Exercise - Food Functions

struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Breakfast": Meal(food: ["Bagel", "Orange Juice", "Egg Whites"], calories: 530)]

func getFood(meal: String) -> Meal? {
    let foodConsumed: Meal? = meals[meal]
    if let mealRecored = foodConsumed {
        return mealRecored
    }
    return nil
}

print(getFood(meal: "Breakfast"))
print(getFood(meal: "Lunch"))

func getMealLog() -> [String: Any]? {
    return UserDefaults.standard.dictionary(forKey: "mealLog")
}

print(getMealLog())

//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Michael Westerby on 09/05/2020.
//  Copyright © 2020 Michael Westerby. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        return [
            Meal(name: "Breakfast", food: [
                Food(name: "Eggs", description: "Scrambled"),
                Food(name: "Toast", description: "White Bread"),
                Food(name: "Bacon", description: "Fried")
                ]
            ),
            Meal(name: "Lunch", food: [
                Food(name: "Soup", description: "Tomato"),
                Food(name: "Bread", description: "White Bread"),
                Food(name: "Sandwich", description: "Ham")
                ]
            ),
            Meal(name: "Dinner", food: [
                Food(name: "Chicken", description: "Roasted"),
                Food(name: "Potatoes", description: "New Potatoes"),
                Food(name: "Green Beans", description: "Steamed")
                ]
            )
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section > meals.count) {
            return 0
        } else {
            return meals[section].food.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]

        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
}

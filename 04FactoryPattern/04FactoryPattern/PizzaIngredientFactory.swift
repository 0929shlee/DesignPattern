//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

struct Dough { let name: String }
struct Sauce { let name: String }
struct Cheese { let name: String }
struct Vegetable { let name: String }
struct Pepperoni { let name: String }
struct Clams { let name: String }

protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Vegetable]
    func createPepperoni() -> Pepperoni
    func createClams() -> Clams
}

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return Dough(name: "Thin crust")
    }
    func createSauce() -> Sauce {
        return Sauce(name: "Marinara")
    }
    func createCheese() -> Cheese {
        return Cheese(name: "Reggiano")
    }
    func createVeggies() -> [Vegetable] {
        return [Vegetable(name: "Garlic"), Vegetable(name: "Onion"), Vegetable(name: "Mushroom"), Vegetable(name: "Red pepper")]
    }
    func createPepperoni() -> Pepperoni {
        return Pepperoni(name: "Sliced")
    }
    func createClams() -> Clams {
        return Clams(name: "Fresh")
    }
}

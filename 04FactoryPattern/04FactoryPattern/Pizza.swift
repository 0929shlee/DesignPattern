//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol Pizza {
    var name: String { get set }
    var dough: Dough? { get set }
    var sauce: Sauce? { get set }
    var veggies: [Vegetable] { get set }
    var cheese: Cheese? { get set }
    var pepperoni: Pepperoni? { get set }
    var clams: Clams? { get set }

    func prepare()
    func bake()
    func cut()
    func box()
}

extension Pizza {
    func bake() {
        print("baking... 175C, 25min")
    }
    func cut() {
        print("cutting... slant")
    }
    func box() {
        print("boxing...")
    }
}

class CheesePizza: Pizza {
    let ingredient_factory: PizzaIngredientFactory
    var name: String = ""

    var dough: Dough? = nil
    var sauce: Sauce? = nil
    var veggies: [Vegetable] = []
    var cheese: Cheese? = nil
    var pepperoni: Pepperoni? = nil
    var clams: Clams? = nil

    init(ingredient_factory: PizzaIngredientFactory) {
        self.ingredient_factory = ingredient_factory
    }

    func prepare() {
        print("preparing: \(self.name)")
        self.dough = ingredient_factory.createDough()
        self.sauce = ingredient_factory.createSauce()
        self.cheese = ingredient_factory.createCheese()
    }
}
class ClamPizza: Pizza {
    let ingredient_factory: PizzaIngredientFactory
    var name: String = ""

    var dough: Dough? = nil
    var sauce: Sauce? = nil
    var veggies: [Vegetable] = []
    var cheese: Cheese? = nil
    var pepperoni: Pepperoni? = nil
    var clams: Clams? = nil

    init(ingredient_factory: PizzaIngredientFactory) {
        self.ingredient_factory = ingredient_factory
    }

    func prepare() {
        print("preparing: \(self.name)")
        self.dough = ingredient_factory.createDough()
        self.sauce = ingredient_factory.createSauce()
        self.cheese = ingredient_factory.createCheese()
        self.clams = ingredient_factory.createClams()
    }
}
//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol PizzaStore {
    func createPizza(type: PizzaType) -> Pizza?
}

enum PizzaType {
    case cheese, veggie, clam, pepperoni
}

extension PizzaStore {
    public func orderPizza(type: PizzaType) -> Pizza? {
        guard let pizza = self.createPizza(type: type) else { return nil }
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()

        return pizza
    }
}

class NYPizzaStore: PizzaStore {
    func createPizza(type: PizzaType) -> Pizza? {
        let ingredient_factory: PizzaIngredientFactory = NYPizzaIngredientFactory()
        var pizza: Pizza?

        switch type {
        case .cheese:
            pizza = CheesePizza(ingredient_factory: ingredient_factory)
            pizza!.name = "NY style cheese pizza"
            return pizza
        case .clam:
            pizza = ClamPizza(ingredient_factory: ingredient_factory)
            pizza!.name = "NY style clam pizza"
            return pizza
        default:
            return nil
        }
    }
}

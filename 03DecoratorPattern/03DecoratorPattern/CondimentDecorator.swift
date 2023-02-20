//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol CondimentDecorator: Beverage {
    var beverage: Beverage { get set }
}

class Mocha: CondimentDecorator {
    var beverage: Beverage
    var description: String { get { "\(self.beverage.description), mocha" } set {} }
    var cost: Double { self.beverage.cost + 0.2 }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}
class Whip: CondimentDecorator {
    var beverage: Beverage
    var description: String { get { "\(self.beverage.description), whip" } set {}}
    var cost: Double { self.beverage.cost + 0.1 }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}
class Soy: CondimentDecorator {
    var beverage: Beverage
    var description: String { get { "\(self.beverage.description), soy" } set {} }
    var cost: Double { self.beverage.cost + 0.3 }

    init(beverage: Beverage) {
        self.beverage = beverage
    }
}

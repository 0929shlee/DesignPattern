//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol Duck {
    var flyBehavior: FlyBehavior { get set }
    var quackBehavior: QuackBehavior { get set }

    func display()
}
extension Duck {
    func performFly() {
        self.flyBehavior.fly()
    }
    func performQuack() {
        self.quackBehavior.quack()
    }
    func swim() {
        print("All ducks float, even a fake duck")
    }
}

class ModelDuck: Duck {
    var flyBehavior: FlyBehavior = FlyNoWay()
    var quackBehavior: QuackBehavior = Quack()

    func display() {
        print("I'm a model duck")
    }
}

//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol FlyBehavior {
    func fly()
}
class FlyWithWings: FlyBehavior {
    func fly() {
        print("Flying!!")
    }
}
class FlyNoWay: FlyBehavior {
    func fly() {
        print("I can't fly")
    }
}
class FlyRocketPowered: FlyBehavior {
    func fly() {
        print("Rocket fly")
    }
}

protocol QuackBehavior {
    func quack()
}
class Quack: QuackBehavior {
    func quack() {
        print("quack")
    }
}
class MuteQuack: QuackBehavior {
    func quack() {
        print("<< silent~ >>")
    }
}
class Squeak: QuackBehavior {
    func quack() {
        print("Squeak")
    }
}

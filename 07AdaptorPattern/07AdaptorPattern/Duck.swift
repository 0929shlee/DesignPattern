//
// Created by Seunghyun Lee on 2022/12/26.
//

import Foundation

protocol Duck {
    func quack()
    func fly()
}

class MallardDuck: Duck {
    func quack() {
        print("Quack")
    }
    func fly() {
        print("Flying!!")
    }
}

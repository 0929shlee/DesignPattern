//
// Created by Seunghyun Lee on 2022/12/26.
//

import Foundation

protocol Turkey {
    func gobble()
    func fly()
}

class WildTurkey: Turkey {
    func gobble() {
        print("Gobble")
    }
    func fly() {
        print("Flying short")
    }
}

class TurkeyAdapter: Duck {
    var turkey: Turkey

    init(turkey: Turkey) {
        self.turkey = turkey
    }

    func quack() {
        self.turkey.gobble()
    }
    func fly() {
        for _ in 0..<5 {
            self.turkey.fly()
        }
    }
}

//
//  main.swift
//  07AdaptorPattern
//
//  Created by Seunghyun Lee on 2022/12/26.
//
//

import Foundation

func testDuck(duck: Duck) {
    duck.quack()
    duck.fly()
}

let duck = MallardDuck()
let turkey = WildTurkey()
let turkey_adapter = TurkeyAdapter(turkey: turkey)

print("Turkey says")
turkey.gobble()
turkey.fly()

print("\nDuck says")
testDuck(duck: duck)

print("\nTurkey adaptor says")
testDuck(duck: turkey_adapter)
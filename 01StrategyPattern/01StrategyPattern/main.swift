//
//  main.swift
//  01StrategyPattern
//
//  Created by Seunghyun Lee on 2022/12/22.
//
//

import Foundation

var model_duck: Duck = ModelDuck()
model_duck.performFly()
model_duck.performQuack()
print()

model_duck.flyBehavior = FlyRocketPowered()
model_duck.performFly()
model_duck.performQuack()

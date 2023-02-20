//
//  main.swift
//  03DecoratorPattern
//
//  Created by Seunghyun Lee on 2022/12/22.
//
//

import Foundation

var beverage: Beverage = Espresso()
beverage = Mocha(beverage: beverage)
beverage = Mocha(beverage: beverage)
beverage = Whip(beverage: beverage)
print("\(beverage.description) $\(beverage.cost)")

var beverage2: Beverage = HouseBlend()
beverage2 = Soy(beverage: beverage2)
beverage2 = Mocha(beverage: beverage2)
beverage2 = Whip(beverage: beverage2)
print("\(beverage2.description) $\(beverage2.cost)")

//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol Beverage {
    var description: String { get set }
    var cost: Double { get }
}

class Espresso: Beverage {
    var description: String = "Espresso"
    var cost: Double = 1.99
}
class HouseBlend: Beverage {
    var description: String = "House blend"
    var cost: Double = 0.89
}

//
//  main.swift
//  04FactoryPattern
//
//  Created by Seunghyun Lee on 2022/12/22.
//
//

import Foundation

let ny_store: NYPizzaStore = NYPizzaStore()

var pizza: Pizza? = ny_store.orderPizza(type: .cheese)
if pizza == nil {
    print("No pizza")
}
else {
    print("\(pizza!.name) ordered by SH.")
    print()
}
pizza = ny_store.orderPizza(type: .clam)
if pizza == nil {
    print("No pizza")
}
else {
    print("\(pizza!.name) ordered by SJ.")
    print()
}

//
// Created by Seunghyun Lee on 2022/12/23.
//

import Foundation

class Singleton {
    private static var singleton: Singleton = Singleton()

    private init() {}

    static func getInstance() -> Singleton {
        return self.singleton
    }
}

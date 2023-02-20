//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

class Light {
    let room: String
    init(_ room: String) {
        self.room = room
    }

    func on() {
        print("\(self.room)'s light on")
    }
    func off() {
        print("\(self.room)'s light off")
    }
}

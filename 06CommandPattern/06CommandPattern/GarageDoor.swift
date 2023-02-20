//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

class GarageDoor {
    let room: String
    init(_ room: String) {
        self.room = room
    }

    func on() {
        print("\(self.room)'s door opened")
    }
    func off() {
        print("\(self.room)'s door closed")
    }
}

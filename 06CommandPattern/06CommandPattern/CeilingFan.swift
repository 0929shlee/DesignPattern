//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

class CeilingFan {
    let room: String
    init(_ room: String) {
        self.room = room
    }

    func on() {
        print("\(self.room)'s ceiling fan on")
    }
    func off() {
        print("\(self.room)'s ceiling fan off")
    }
}

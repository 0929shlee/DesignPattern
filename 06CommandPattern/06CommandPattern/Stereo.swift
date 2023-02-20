//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

class Stereo {
    let room: String

    init(_ room: String) {
        self.room = room
    }

    func on() {
        print("\(self.room)'s stereo on")
    }
    func off() {
        print("\(self.room)'s stereo off")
    }
    func setCD() {
        print("\(self.room)'s stereo plays CD")
    }
    func setVolume(_ volume: Int) {
        print("\(self.room)'s stereo volume is set as \(volume)")
    }
}

//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

protocol Command {
    func execute()
}

class NoCommand: Command {
    func execute() {}
}

class LightOnCommand: Command {
    var light: Light

    init(light: Light) {
        self.light = light
    }

    func execute() {
        light.on()
    }
}
class LightOffCommand: Command {
    var light: Light

    init(light: Light) {
        self.light = light
    }

    func execute() {
        light.off()
    }
}

class StereoOnWithCDCommand: Command {
    var stereo: Stereo

    init(stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        self.stereo.on()
        self.stereo.setCD()
        self.stereo.setVolume(11)
    }
}
class StereoOffWithCDCommand: Command {
    var stereo: Stereo

    init(stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        self.stereo.off()
    }
}

class CeilingFanOnCommand: Command {
    var ceiling_fan: CeilingFan

    init(ceiling_fan: CeilingFan) {
        self.ceiling_fan = ceiling_fan
    }

    func execute() {
        self.ceiling_fan.on()
    }
}
class CeilingFanOffCommand: Command {
    var ceiling_fan: CeilingFan

    init(ceiling_fan: CeilingFan) {
        self.ceiling_fan = ceiling_fan
    }

    func execute() {
        self.ceiling_fan.off()
    }
}

class GarageDoorUpCommand: Command {
    var garage_door: GarageDoor

    init(garage_door: GarageDoor) {
        self.garage_door = garage_door
    }

    func execute() {
        self.garage_door.on()
    }
}
class GarageDoorDownCommand: Command {
    var garage_door: GarageDoor

    init(garage_door: GarageDoor) {
        self.garage_door = garage_door
    }

    func execute() {
        self.garage_door.off()
    }
}

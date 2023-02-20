//
//  main.swift
//  06CommandPattern
//
//  Created by Seunghyun Lee on 2022/12/24.
//
//

import Foundation

let remote_control: RemoteControl = RemoteControl()

let living_room_light: Light = Light("Living Room")
let kitchen_light: Light = Light("Kitchen")
let ceiling_fan: CeilingFan = CeilingFan("Living Room")
let garage_door: GarageDoor = GarageDoor("Garage")
let stereo: Stereo = Stereo("Living Room")

remote_control.setCommand(
        slot: 0,
        on_command: LightOnCommand(light: living_room_light),
        off_command: LightOffCommand(light: living_room_light)
)
remote_control.setCommand(
        slot: 1,
        on_command: LightOnCommand(light: kitchen_light),
        off_command: LightOffCommand(light: kitchen_light)
)
remote_control.setCommand(
        slot: 2,
        on_command: CeilingFanOnCommand(ceiling_fan: ceiling_fan),
        off_command: CeilingFanOffCommand(ceiling_fan: ceiling_fan)
)
remote_control.setCommand(
        slot: 3,
        on_command: GarageDoorUpCommand(garage_door: garage_door),
        off_command: GarageDoorDownCommand(garage_door: garage_door)
)
remote_control.setCommand(
        slot: 4,
        on_command: StereoOnWithCDCommand(stereo: stereo),
        off_command: StereoOffWithCDCommand(stereo: stereo)
)

print(remote_control.description)

for i in 0...4 {
    remote_control.onButtonWasPushed(slot: i)
    remote_control.offButtonWasPushed(slot: i)
}

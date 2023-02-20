//
// Created by Seunghyun Lee on 2022/12/24.
//

import Foundation

class RemoteControl {
    private let n_slots: Int = 7
    private var on_commands: [Command]
    private var off_commands: [Command]

    var description: String {
        var str: String = "\n----- Remote control -----\n"
        for i in 0..<self.n_slots {
            str += "[slot \(i)] \(String(describing: type(of: self.on_commands[i])))\t\(String(describing: type(of: self.off_commands[i])))\n"
        }
        return str
    }

    init() {
        self.on_commands = Array(repeating: NoCommand(), count: n_slots)
        self.off_commands = Array(repeating: NoCommand(), count: n_slots)
    }

    func setCommand(slot: Int, on_command: Command, off_command: Command) {
        self.on_commands[slot] = on_command
        self.off_commands[slot] = off_command
    }

    func onButtonWasPushed(slot: Int) {
        self.on_commands[slot].execute()
    }
    func offButtonWasPushed(slot: Int) {
        self.off_commands[slot].execute()
    }
}

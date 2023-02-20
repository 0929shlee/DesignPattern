//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol Subject {
    func registerObserver(o: Observer)
    func removeObserver(o: Observer)
    func notifyObservers()
}

class WeatherData: Subject {
    var observers: [Observer] = []

    var temperature: Double = 0 { didSet { self.notifyObservers() } }
    var humidity: Double = 0 { didSet { self.notifyObservers() } }
    var pressure: Double = 0 { didSet { self.notifyObservers() } }

    func registerObserver(o: Observer) {
        self.observers.append(o)
    }
    func removeObserver(o: Observer) {
        self.observers = self.observers.filter({ !$0.isEqual(to: o) })
    }
    func notifyObservers() {
        self.observers.forEach {
            $0.update(temp: self.temperature, humidity: self.humidity, pressure: self.pressure)
        }
    }
}

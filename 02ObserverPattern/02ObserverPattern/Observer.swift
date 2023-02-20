//
// Created by Seunghyun Lee on 2022/12/22.
//

import Foundation

protocol Observer {
    var id: UUID { get set }
    func update(temp: Double, humidity: Double, pressure: Double)
}
extension Observer {
    func isEqual(to o: Observer) -> Bool {
        return self.id == o.id
    }
}

class CurrentConditionDisplay: Observer, DisplayElement {
    var id: UUID = UUID()

    var temperature: Double = 0
    var humidity: Double = 0
    var weatherData: WeatherData

    init(whetherData: WeatherData) {
        self.weatherData = whetherData
        whetherData.registerObserver(o: self)
    }

    func update(temp: Double, humidity: Double, pressure: Double) {
        self.temperature = temp
        self.humidity = humidity
        self.display()
    }

    func display() {
        print("Current state: temperature \(self.temperature)F, humidity \(self.humidity)%")
    }
}

class StatisticsDisplay: Observer, DisplayElement {
    var id: UUID = UUID()

    var temperature: Double = 0
    var pressure: Double = 0
    var weatherData: WeatherData

    init(whetherData: WeatherData) {
        self.weatherData = whetherData
        whetherData.registerObserver(o: self)
    }

    func update(temp: Double, humidity: Double, pressure: Double) {
        self.temperature = temp
        self.pressure = pressure
        self.display()
    }

    func display() {
        print("Statistics state: temperature \(self.temperature)F, pressure \(self.pressure)pas")
    }
}

class ForecastDisplay: Observer, DisplayElement {
    var id: UUID = UUID()

    var temperature: Double = 0
    var humidity: Double = 0
    var pressure: Double = 0
    var weatherData: WeatherData

    init(whetherData: WeatherData) {
        self.weatherData = whetherData
        whetherData.registerObserver(o: self)
    }

    func update(temp: Double, humidity: Double, pressure: Double) {
        self.temperature = temp
        self.humidity = humidity
        self.pressure = pressure
        self.display()
    }

    func display() {
        print("Forecast state: temperature \(self.temperature)F, humidity \(self.humidity), pressure \(self.pressure)pas")
    }
}

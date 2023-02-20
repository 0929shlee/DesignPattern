//
//  main.swift
//  02ObserverPattern
//
//  Created by Seunghyun Lee on 2022/12/22.
//
//

import Foundation

let weatherData: WeatherData = WeatherData()

let currentDisplay: CurrentConditionDisplay = CurrentConditionDisplay(whetherData: weatherData)
let statisticsDisplay: StatisticsDisplay = StatisticsDisplay(whetherData: weatherData)
let forecastDisplay: ForecastDisplay = ForecastDisplay(whetherData: weatherData)

weatherData.temperature = 10
print()
weatherData.humidity = 11
print()
weatherData.pressure = 12
print()

weatherData.removeObserver(o: currentDisplay)

weatherData.temperature = 10
print()
weatherData.humidity = 11
print()
weatherData.pressure = 12
print()

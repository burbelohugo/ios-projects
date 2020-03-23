//
//  WeatherData.swift
//  Clima
//
//  Created by Hugo Burbelo on 3/22/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
struct WeatherData: Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable {
    let temp: Double
}

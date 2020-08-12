//
//  Meteo.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import Foundation

// MARK: - Maintenance
struct Meteo: Codable {
    let status, message: String
    let data: [Masuratoare]
}

// MARK: - Datum
struct Masuratoare: Codable {
    let meteoId, dataCrearii, temperatura, umiditate: String
    let vant: String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case meteoId = "_id"
        case dataCrearii = "data_crearii"
        case temperatura, umiditate, vant
        case v = "__v"
    }
}

//
//  MeteoViewModel.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import Foundation

struct MasuratoareViewModel {
    let masuratoare: Masuratoare
    
    init(masuratoare: Masuratoare) {
        self.masuratoare = masuratoare
    }
    
    var meteoId: String {
        return self.masuratoare.meteoId
    }
    
    var temperatura: String {
        return self.masuratoare.temperatura
    }
    
    var umiditate: String {
        return self.masuratoare.umiditate
    }
}

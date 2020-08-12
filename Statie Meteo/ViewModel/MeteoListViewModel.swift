//
//  MeteoListViewModel.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import Foundation
import Combine

class MeteoListViewModel: ObservableObject {
    @Published var masuratori = [Masuratoare]()
    
    func fetchAllNewMeteo() {
        NetworkManager().getNewestMeteos { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let masuratori):
                    self.masuratori = masuratori
                    print(masuratori)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

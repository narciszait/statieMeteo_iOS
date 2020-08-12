//
//  ContentView.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var masuratoriVM = MeteoListViewModel()
    
    init() {
        self.masuratoriVM.fetchAllNewMeteo()
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Masuratoare.swift
//  Statie Meteo
//
//  Created by Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct MasuratoareListView: View {
    @ObservedObject var masuratoriVM = MeteoListViewModel()
    
    init() {
        self.masuratoriVM.fetchAllNewMeteo()
        UITableView.appearance().separatorColor = .clear
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.11, blue: 0.15)
            .edgesIgnoringSafeArea(.all)
            
            List(masuratoriVM.masuratori, id: \.meteoId) { masuratoare in
                MasuratoareRow(masuratoare: masuratoare)
            }.padding(.horizontal, -20)
        }
    }
}

struct MasuratoareListView_Previews: PreviewProvider {
    static var previews: some View {
        MasuratoareListView()
    }
}

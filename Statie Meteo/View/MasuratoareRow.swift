//
//  MasuratoareRow.swift
//  Statie Meteo
//
//  Created by Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct MasuratoareRow: View {
    var masuratoare: Masuratoare
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            HStack {
                Text("Temperatura: ")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Text("\(masuratoare.temperatura) °C")
                    .foregroundColor(.white)
            }.padding(8)
            
            HStack {
                Text("Umiditate: ")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Text("\(masuratoare.umiditate) %")
                    .foregroundColor(.white)
            }.padding(8)
            
            HStack {
                Text("Vant: ")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Text("\(masuratoare.vant) m/s")
                    .foregroundColor(.white)
            }.padding(8)
            
            Spacer()
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.64, green: 0.67, blue: 0.72), Color(red: 0.42, green: 0.46, blue: 0.54)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(15.0)
    }
}

//struct MasuratoareRow_Previews: PreviewProvider {
//    static var previews: some View {
//        MasuratoareRow(masuratoare: Masuratoare())
//    }
//}

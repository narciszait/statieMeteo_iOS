//
//  About.swift
//  Statie Meteo
//
//  Created by Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct DespreView: View {
    @Binding var trebuieSaPrezint: Bool
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.11, blue: 0.15)
                       .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Text("Datele sunt transmise de la o placa Arduino, dotata cu senzori si o placa de retea WiFi.\nPlaca Arduino transmite la fiecare 10 minutes masuratorile inregistrate de senzori unui server nodeJS, conectat la o baza de date MongoDB.\nAplicatia curenta de aici isi ia informatiile pe care le arata sub forma de tabel")
                .font(.system(.subheadline, design: .monospaced))
                .padding(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 0.5)
                ).foregroundColor(Color.white)
                
                Spacer()
                
                Button(action: {
                    self.trebuieSaPrezint.toggle()
                }) {
                    Text("Inchide")
                        .font(.system(.subheadline, design: .rounded))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(lineWidth: 1)
                        )
                        .foregroundColor(.white)
                }
            }
        }  
    }
}

struct DespreView_Previews: PreviewProvider {
    static var previews: some View {
        DespreView(trebuieSaPrezint: .constant(true))
    }
}

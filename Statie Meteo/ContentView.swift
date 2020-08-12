//
//  ContentView.swift
//  Statie Meteo
//
//  Created by Laurentiu Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var trebuieSaPrezint = false
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.11, blue: 0.15)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Statie meteo")
                    .modifier(TitleModifier())
                
                Spacer()
                
                MasuratoareListView()
                
                Spacer()
                
                Button(action: {
                    self.trebuieSaPrezint.toggle()
                }) {
                    Text("Despre")
                    .modifier(TitleModifier())
                }.sheet(isPresented: $trebuieSaPrezint) {
                    DespreView(trebuieSaPrezint: self.$trebuieSaPrezint)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

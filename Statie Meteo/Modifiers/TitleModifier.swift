//
//  TitleModifier.swift
//  Statie Meteo
//
//  Created by Narcis Zait on 12/08/2020.
//  Copyright © 2020 Alex Paval. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.system(.subheadline, design: .rounded))
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(.white)
    }
}

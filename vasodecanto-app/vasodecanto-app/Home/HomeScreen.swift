//
//  HomeScreen.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 29/09/25.
//

import SwiftUI
import WaterfallGrid

struct HomeScreen: View {
    let plantasRepetidas: [PlantInfo] = Array(repeating: PlantInfo(name: "Nome"), count: 15)

    var body: some View {
        ScrollView {
            WaterfallGrid(0..<plantasRepetidas.count, id: \.self, content: { index in
                PlantCardView(plantInfo: plantasRepetidas[index], index: index)
            })
            .gridStyle(
                columnsInPortrait: 2,
                columnsInLandscape: 4,
                spacing: CGFloat(16),
                animation: .default
            )
            .padding()
        }
        .background(Color(hex: 0xE9E7E2))
    }
}

#Preview {
    HomeScreen()
}

struct PlantInfo {
    let name: String
}

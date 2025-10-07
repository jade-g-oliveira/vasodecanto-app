//
//  HomeScreen.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 29/09/25.
//

import SwiftUI
import WaterfallGrid

struct HomeScreen: View {
    let repeatedPlants: [PlantInfo] = Array(repeating: PlantInfo(name: "Nome"), count: 15)
    let badgePlants: [PlantBadge] = [
        .init(
            iconName: "sun.max",
            backgroundColor: .blue,
            iconColor: .black
        ),
        .init(
            iconName: "cat",
            backgroundColor: .purple,
            iconColor: .white
        ),
        .init(
            iconName: "cloud",
            backgroundColor: .blue,
            iconColor: .white
        ),
        .init(
            iconName: "humidity",
            backgroundColor: .orange,
            iconColor: .black
        )
    ]

    var body: some View {
        // MARK: Search Bar
        PlantSearchBarView()

        // MARK: Plants Grids
        ScrollView {
            WaterfallGrid(0..<repeatedPlants.count, id: \.self) { index in
                PlantCardView(
                    imageName: Constants.Assets.calateiaPlant,
                    title: "Calatéia",
                    subtitle: "calathea reseopicta",
                    plantBadges: badgePlants,
                    index: index
                )
            }
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

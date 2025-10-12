//
//  HomeScreen.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 29/09/25.
//

import SwiftUI
import WaterfallGrid

struct HomeScreenConstants {
    // MARK: Icons
    static let sunIcon = "sun.max"
    static let petIcon = "cat"
    static let cloudIcon = "cloud"
    static let humidityIcon = "humidity"
    static let plantIlustration = "PlantIlustration1"

    // MARK: Wordings
    static let suggestionWording = "Sugestões"
    }

struct HomeScreen: View {
    let repeatedPlants: [PlantInfo] = Array(
        repeating: PlantInfo(
            imageName: HomeScreenConstants.plantIlustration,
            title: "Calatéia",
            subtitle: "calathea reseopicta",
            plantBadges: [
                .init(
                    iconName: HomeScreenConstants.cloudIcon,
                    backgroundColor: .blue,
                    iconColor: .white
                )
            ]
        ),
        count: 15
    )

    let badgePlants: [PlantBadge] = [
        .init(
            iconName: HomeScreenConstants.sunIcon,
            backgroundColor: .blue,
            iconColor: .black
        ),
        .init(
            iconName: HomeScreenConstants.petIcon,
            backgroundColor: .purple,
            iconColor: .white
        ),
        .init(
            iconName: HomeScreenConstants.cloudIcon,
            backgroundColor: .blue,
            iconColor: .white
        ),
        .init(
            iconName: HomeScreenConstants.humidityIcon,
            backgroundColor: .orange,
            iconColor: .black
        )
    ]

    var body: some View {
        VStack {
            // MARK: Search Bar
            PlantSearchBarView()

            ScrollView {
                Text(HomeScreenConstants.suggestionWording)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .padding(.top, Spacing.extraSmall)
                    .padding(.leading, Spacing.small)
                    .font(.heeboBoldLarge)
                    .foregroundStyle(.greenText)

                // MARK: Plants Grids
                WaterfallGrid(0..<repeatedPlants.count, id: \.self) { index in
                    let plant = repeatedPlants[index]
                    return PlantCardView(
                        imageName: plant.imageName,
                        title: plant.title,
                        subtitle: plant.subtitle,
                        plantBadges: badgePlants,
                        index: index
                    )
                }
                .gridStyle(
                    columnsInPortrait: 2,
                    columnsInLandscape: 4,
                    spacing: CGFloat(Spacing.small),
                    animation: .default
                )
                .padding(.horizontal)
            }
        }
        .background(Color(.grayBackground))
    }
}

#Preview {
    HomeScreen()
}

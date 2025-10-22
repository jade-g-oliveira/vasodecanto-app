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
    static let sunIcon = "thermometer.sun.fill"
    static let pillIcon = "pill"
    static let windIcon = "wind"
    static let humidityIcon = "humidity"
    static let plantIlustration = "PlantIlustration1"

    // MARK: Wordings
    static let suggestionWording = "Sugestões"
}

struct HomeScreen: View {
    @State var isShowingSheet: Bool = false
    @State private var navigateToDetails = false

    let repeatedPlants: [PlantInfo] = Array(
        repeating: PlantInfo(
            imageName: HomeScreenConstants.plantIlustration,
            title: "Calatéia",
            subtitle: "calathea reseopicta",
            plantBadges: [
                .init(
                    iconName: HomeScreenConstants.windIcon,
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
            backgroundColor: .yellowTag,
            iconColor: .black
        ),
        .init(
            iconName: HomeScreenConstants.pillIcon,
            backgroundColor: .lightGreenTag,
            iconColor: .black
        ),
        .init(
            iconName: HomeScreenConstants.windIcon,
            backgroundColor: .lightBlue,
            iconColor: .white
        ),
        .init(
            iconName: HomeScreenConstants.humidityIcon,
            backgroundColor: .lightBlue,
            iconColor: .white
        )
    ]

    var body: some View {
        NavigationStack {
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
                        .onTapGesture {
                            self.isShowingSheet = true
                        }
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
            .background(
                NavigationLink(
                    destination: PlantDetailsScreen(),
                    isActive: $navigateToDetails,
                    label: { EmptyView() }
                )
            )
            .sheet(isPresented: $isShowingSheet) {
                PlantDetailBottomSheet(shouldNavigateToDetails: $navigateToDetails)
            }
            .navigationBarBackButtonHidden(true)
            .background(Color(.grayBackground))
        }
    }
}

#Preview {
    HomeScreen()
}

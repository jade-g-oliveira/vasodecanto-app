import SwiftUI
import WaterfallGrid

struct ListsPlantsView: View {
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
        VStack {
            HeaderView()

            ScrollView {
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
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 0) {
                Image("living-room-illustration")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 80)
                    .offset(x: 0, y: -32)

                HStack {
                    Text("Fechar")
                        .font(.heeboMediumCaption)
                        .foregroundColor(.greenText)

                    Spacer()

                    Text("Sala de Estar")
                        .font(.heeboBoldBody)
                        .foregroundColor(.greenText)

                    Spacer()

                    Text("Editar")
                        .font(.heeboMediumCaption)
                        .foregroundColor(.greenText)
                }
                .foregroundColor(.white)
                .padding(.top, Spacing.medium)
                .padding(.horizontal)
        }
        .background(Color.grayBackground)
    }
}

#Preview {
    ListsPlantsView()
}

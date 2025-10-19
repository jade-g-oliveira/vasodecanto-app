//
//  PlantDetailsScreen.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 13/10/25.
//

import SwiftUI

struct PlantDetailsScreen: View {
    let plant: Plant = .calathea

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                ZStack(alignment: .bottomLeading) {
                    Image("calateia")
                        .resizable()
                        .frame(height: 200)

                    VStack(alignment: .leading) {
                        Text("Como cuidar?")
                            .font(.heeboMediumBody)
                            .frame(height: Spacing.extraLarge)
                            .foregroundColor(.greenText)
                            .padding(.horizontal)
                            .padding(.vertical, Spacing.extraSmall)
                            .background(Color.white)
                            .cornerRadius(16, corners: [.topRight, .bottomRight])
                    }
                    .offset(y: 16)
                }
                .padding(.bottom, Spacing.large)

                // MARK: Title e Subtitle
                VStack {
                    Text(plant.name)
                        .font(.staatlichesRegularXTitle)
                        .foregroundColor(.greenText)

                    Text(plant.scientificName)
                        .font(.alegreyaItalicBody)
                        .foregroundColor(.greenText)
                        .padding(.bottom, Spacing.small)
                }

                // MARK: Plant Description
                VStack(alignment: .center, spacing: Spacing.small) {
                    Text("O BÁSICO PARA COMEÇAR")
                        .font(.staatlichesRegularLarge)
                        .foregroundColor(.greenText)

                    Text(plant.basicCare)
                        .font(.heeboBody)
                        .foregroundColor(.greenText)
                }
                .padding(Spacing.medium)
                .background(Color.lightYellow)
                .cornerRadius(12)
                .frame(maxWidth: .infinity)
                .padding()

                // MARK: - Collapsed Sections
                // 1. Benefits
                VStack(alignment: .leading) {
                    BenefitsSectionView(plantBenefits: plant.benefits)
                }
                .padding(.horizontal)

                // MARK: 2. SOL & ILUMINAÇÃO
                VStack(alignment: .leading) {
                    PlantDetailSectionView(
                        plant: Plant.calathea,
                        plantDetailsSectionItem: [
                            .init(
                                title: "Necessidade de Luz",
                                textColor: .primaryApp,
                                plant: Plant.calathea,
                                indicatorLevels: [
                                    .init(
                                        labels: ["Interna", "Externa", "Ambos"],
                                        color: .primaryApp
                                    )
                                ],
                                additionalDescription: "Texto demonstrativo",
                                additionalImage: "sun.max"
                            ),
                            .init(
                                title: "Pode ficar no sol diariamente",
                                textColor: .primaryApp,
                                plant: Plant.calathea,
                                indicatorLevels: [
                                    .init(
                                        labels: ["Sombra", "Parcial", "Sim"],
                                        color: .primaryApp)
                                ],
                                additionalDescription: nil,
                                additionalImage: nil
                            )
                        ],
                        sectionIcon: "sun.max",
                        sectionTitle: "Sol & Iluminação",
                        sectionColor: .primaryApp
                    )
                }
                .padding()

                // 3. REGA
                VStack(alignment: .leading) {
                    PlantDetailSectionView(
                        plant: Plant.calathea,
                        plantDetailsSectionItem: getPlantDetailsSectionItemsExemple(),
                        sectionIcon: "water.waves",
                        sectionTitle: "Rega",
                        sectionColor: .darkBlue
                    )
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)

        // MARK: Add plant button
        AddPlantButtonView()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    PlantDetailsScreen()
}

extension PlantDetailsScreen {
    func getPlantDetailsSectionItemsExemple() -> [PlantDetailSectionItemModel] {
        let plantDetailsSectionItems: [PlantDetailSectionItemModel] = [
            .init(
                title: "Frequência",
                textColor: .darkBlue,
                plant: Plant.calathea,
                indicatorLevels: [
                    .init(
                        labels: ["Diária", "2x sem.", "3x sem.", "10-15 dias"],
                        color: .darkBlue
                    )
                ],
                additionalDescription: "2 a 3 vezes por semana no verão, 1 a 2 vezes por semana no inverno.",
                additionalImage: "water.waves"
            ),
            .init(
                title: "Volume aproximado de água",
                textColor: .darkBlue,
                plant: Plant.calathea,
                indicatorLevels: [
                    .init(
                        labels: ["Pouco", "Médio", "Alto"],
                        color: .darkBlue
                    )
                ],
                additionalDescription: nil,
                additionalImage: nil)
        ]

        return plantDetailsSectionItems
    }
}

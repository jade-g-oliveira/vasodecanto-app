//
//  PlantDetailSection.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 18/10/25.
//

import SwiftUI

struct PlantDetailSectionView: View {
    let plant: Plant
    let plantDetailsSectionItem: [PlantDetailSectionItemModel]
    let sectionIcon: String
    let sectionTitle: String
    let sectionColor: Color

    var body: some View {
        DisclosureGroup(
            content: {
                ForEach(plantDetailsSectionItem, id: \.self) { plantSection in
                    PlantDetailSectionItemView(plantDetails: plantSection)
                }
            },
            label: {
                VStack(spacing: 8) {
                    Image(systemName: sectionIcon)
                        .foregroundColor(sectionColor)

                    Text(sectionTitle)
                        .font(.staatlichesRegularLarge)
                        .foregroundColor(sectionColor)
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 8)
                .multilineTextAlignment(.center)
            }
        )
        .accentColor(sectionColor)
    }
}

#Preview {
    PlantDetailSectionView(
        plant: Plant.calathea,
        plantDetailsSectionItem: [.example1, .example2],
        sectionIcon: "sun.max",
        sectionTitle: "Temperatura",
        sectionColor: .primaryApp
    )
    .padding()
}

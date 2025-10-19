//
//  PlantDetailSection.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 15/10/25.
//

import SwiftUI

struct PlantDetailSectionItemView: View {
    let plantDetails: PlantDetailSectionItemModel

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.small) {
            Text(plantDetails.title)
                .font(.heeboCaption)
                .foregroundColor(plantDetails.textColor)

            ForEach(plantDetails.indicatorLevels, id: \.self) { indicator in
                LevelIndicatorView(
                    level: plantDetails.plant.waterLevel,
                    labels: indicator.labels,
                    activeColor: indicator.color
                )
            }

            if let additionalDescription = plantDetails.additionalDescription,
               let additionalImage = plantDetails.additionalImage {
                HStack {
                    Image(systemName: additionalImage)
                        .padding(.leading, Spacing.small)
                        .foregroundColor(plantDetails.textColor)
                    Text(additionalDescription)
                        .lineLimit(0)
                        .font(.heeboCaption)
                        .foregroundColor(plantDetails.textColor)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 32)
                .multilineTextAlignment(.leading)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.defaultGray, lineWidth: 0.5)
                )
                .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .background(Color.lightYellow)
        .cornerRadius(8)
    }
}

#Preview {
    let plantDetails = PlantDetailSectionItemModel(
        title: "Rega",
        textColor: .darkBlue,
        plant: Plant.calathea,
        indicatorLevels: [
            .init(
                labels: ["Baixa", "Média", "Alta"],
                color: .darkBlue
            )
        ],
        additionalDescription: "2 a 3 vezes por semana no verão, 1 a 2 vezes por semana no inverno.",
        additionalImage: "water.waves"
    )
    PlantDetailSectionItemView(plantDetails: plantDetails)
    .padding()
}

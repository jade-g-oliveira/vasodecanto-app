//
//  PlantCardView.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 30/09/25.
//

import SwiftUI

struct PlantCardView: View {
    let cardWidth: CGFloat = 185
    let imageName: String
    let title: String
    let subtitle: String
    let plantBadges: [PlantBadge]
    let index: Int

    let columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .frame(width: cardWidth)
                .clipped()
                .padding(.top, Spacing.extraSmall)

            VStack {
                Text(title)
                    .font(.staatlichesRegularTitle)
                    .foregroundColor(.greenText)

                Text(subtitle)
                    .font(.alegreyaItalicBody)
                    .foregroundColor(.greenText)

                Text("Benefícios:")
                    .font(.heeboCaption)
                    .foregroundColor(Color.black)

                LazyVGrid(columns: columns, spacing: Spacing.micro) {
                    ForEach(plantBadges) { plantBadge in
                        PlantBadgeView(plantBadgeInfo: plantBadge)
                    }
                }
            }
            .padding()

        }
        .frame(width: cardWidth, height: index % 2 == 0 ? 310 : 290)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 3)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

#Preview {
    PlantCardView(
        imageName: "PlantIlustration1",
        title: "Calatéia",
        subtitle: "calathea reseopicta",
        plantBadges: [
            PlantBadge(
                iconName: "sun.max",
                backgroundColor: .greenLight,
                iconColor: .black
            ),
            PlantBadge(
                iconName: "cat",
                backgroundColor: .purple,
                iconColor: .white
            )
        ],
        index: 0
    )
    .padding(20)
    .background(Color(.systemGray5))
}

//
//  PlantBadgeView.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 06/10/25.
//

import SwiftUI

struct PlantBadgeView: View {
    let plantBadgeInfo: PlantBadge
    let height: CGFloat = 26
    let width: CGFloat = 34

    var body: some View {
        ZStack {
            Capsule()
                .fill(plantBadgeInfo.backgroundColor)
                .frame(width: width, height: height)

            Image(systemName: plantBadgeInfo.iconName)
                .resizable()
                .scaledToFit()
                .frame(width: width * 0.6, height: height * 0.6)
                .foregroundColor(plantBadgeInfo.iconColor)
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    PlantBadgeView(
        plantBadgeInfo: PlantBadge(
            iconName: "sun.max",
            backgroundColor: .green,
            iconColor: .black
        )
    )
}

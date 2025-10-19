//
//  LevelIndicatorView.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 13/10/25.
//

import SwiftUI

struct LevelIndicatorView: View {
    let level: Int
    let labels: [String]
    let activeColor: Color
    let inactiveColor = Color.gray.opacity(0.3)

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<labels.count, id: \.self) { index in
                VStack(spacing: Spacing.extraSmall) {
                    // Retângulo indicador
                    Rectangle()
                        .fill(index + 1 == level ? activeColor : inactiveColor)
                        .frame(height: 5)

                    // Texto da label
                    Text(labels[index])
                        .font(index + 1 == level ? .heeboBoldCaption : .heeboMediumCaption)
                        .foregroundColor(index + 1 == level ? activeColor : inactiveColor)
                }

                if index < labels.count - 1 {
                    Spacer()
                }
            }
        }
        .padding(.top, Spacing.micro)
    }
}

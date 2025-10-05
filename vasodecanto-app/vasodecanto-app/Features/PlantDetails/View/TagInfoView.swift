//  TagInfoView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.

import SwiftUI

struct TagView: View {
    let text: String
    let iconName: String
    let backgroundColor: Color
    let textColor: Color
    var body: some View {
        HStack(spacing: Spacing.micro) {
            Image(systemName: iconName)
                .font(.heeboBoldCaption)
            Text(text).font(.heeboCaption)
        }
        .frame(height: Spacing.regular)
        .padding(.horizontal, Spacing.small)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .cornerRadius(Spacing.regular)
    }
}

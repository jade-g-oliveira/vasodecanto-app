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
        HStack(spacing: 4) {
            Image(systemName: iconName)
                .font(.custom("Heebo-Bold", size: FontSize.caption, relativeTo: .caption))
            Text(text).font(AppFont.heeboCaption())
        }
        // Padding interno (Espaçamento dentro da tag)
//        .padding(.vertical, 4)
        .frame(height: 24)
        .padding(.horizontal, 16)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .cornerRadius(24)
    }
}

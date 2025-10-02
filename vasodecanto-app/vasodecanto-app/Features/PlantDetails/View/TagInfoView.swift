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
                .font(.title2)
                .fontWeight(.bold)
            Text(text).font(AppFont.heeboBody())
        }
        // Padding interno (Espaçamento dentro da tag)
        .padding(.vertical, 4)
        .padding(.horizontal, 16)
        .background(backgroundColor)
        .foregroundColor(textColor)
        .cornerRadius(24)
    }
}

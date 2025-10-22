//
//  EmptyStateView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: Spacing.small) {
            Image(systemName: "list.bullet.rectangle.portrait")
                .font(.system(size: Spacing.extraLarge))
                .foregroundStyle(.secondary)
            Text("Você ainda não criou nenhuma lista")
                .font(.heeboBody)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, Spacing.small)
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}

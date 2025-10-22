//
//  EmptyStateView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "list.bullet.rectangle.portrait")
                .font(.system(size: 48))
                .foregroundStyle(.secondary)
            Text("Você ainda não criou nenhuma lista")
                .font(.custom("Heebo-Regular", size: 16))
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}

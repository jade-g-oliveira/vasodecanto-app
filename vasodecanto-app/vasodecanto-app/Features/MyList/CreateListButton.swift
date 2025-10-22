//
//  CreateListButton.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct CreateListButton: View {
    @State private var isPressed = false
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text("Criar uma lista")
                .font(.heeboBoldBody)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, Spacing.small)
                .padding(.horizontal, Spacing.small)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(
                            Color("PrimaryAppColor")
                                .opacity(isPressed ? 0.7 : 1.0)
                        )
                )
                .scaleEffect(isPressed ? 0.97 : 1.0)
                .animation(.easeInOut(duration: 0.15), value: isPressed)
        }
        .buttonStyle(.plain)
        .simultaneousGesture(DragGesture(minimumDistance: 0)
            .onChanged { _ in isPressed = true }
            .onEnded { _ in isPressed = false }
        )
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}

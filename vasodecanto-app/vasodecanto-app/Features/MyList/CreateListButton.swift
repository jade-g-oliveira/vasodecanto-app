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
                .font(.custom("Heebo-Bold", size: 16))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .padding(.horizontal, 16)
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
    MyListScreen()
}

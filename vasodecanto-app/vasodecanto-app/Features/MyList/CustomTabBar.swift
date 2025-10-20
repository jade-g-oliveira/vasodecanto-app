//
//  CustomTabBar.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 19/10/25.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Tab

    enum Tab {
        case listas, adicionar, perfil
    }

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack {
                HStack {
                    TabBarButton(
                        icon: "list.bullet",
                        text: "Listas",
                        isSelected: selectedTab == .listas
                    ) {
                        selectedTab = .listas
                    }

                    Spacer()

                    TabBarButton(
                        icon: "plus.circle",
                        text: "Adicionar",
                        isSelected: selectedTab == .adicionar
                    ) {
                        selectedTab = .adicionar
                    }

                    Spacer()

                    TabBarButton(
                        icon: "person",
                        text: "Perfil",
                        isSelected: selectedTab == .perfil
                    ) {
                        selectedTab = .perfil
                    }
                }
                .padding(.top, 16)
                .padding(.bottom, 32)
                .padding(.horizontal, 32)
            }
            .background(
                Color("PrimaryAppColor")
                    .clipShape(
                        RoundedCorner(radius: 16, corners: [.topLeft, .topRight])
                    )
                    .shadow(color: .black.opacity(0.4), radius: 6, y: -2)
            )
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TabBarButton: View {
    var icon: String
    var text: String
    var isSelected: Bool
    var action: () -> Void
    var iconSize: CGFloat = 32

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: iconSize, weight: .semibold))
                Text(text)
                    .font(.custom("Heebo-Medium", size: 12))
            }
            .foregroundStyle(.white)
        }
    }
}

struct RoundedCornerTab: Shape {
    var radius: CGFloat = 0.0
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    MyListScreen()
}

//
//  TabViewContainer.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 07/10/25.
//

import SwiftUI
import UIKit

enum TabKey: Hashable {
    case house, search, profile
}

struct TabViewContainer: View {
    @State var selectedTab: TabKey

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: .house) {
                HomeScreen()
            }

            Tab("Buscar", systemImage: "magnifyingglass", value: .search) {
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
                    .foregroundStyle(.blue)
                Text("Tela em construção")
            }

            Tab("Perfil", systemImage: "person.crop.circle", value: .profile) {
                ProfileView()
            }
        }
        .tint(.white)
    }
}

#Preview {
    TabViewContainer(selectedTab: .house)
}

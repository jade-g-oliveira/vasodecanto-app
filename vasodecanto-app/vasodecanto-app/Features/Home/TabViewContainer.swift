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

struct TabViewConstants {
    static let listIcon = "list.bullet"
    static let searchIcon = "magnifyingglass"
    static let profileIcon = "person.crop.circle"

    // MARK: Wordings
    static let listWording = "Lista"
    static let searchWording = "Buscar"
    static let profileWording = "Perfil"
}

struct TabViewContainer: View {
    @State var selectedTab: TabKey

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(
                TabViewConstants.listWording,
                systemImage: TabViewConstants.listIcon,
                value: .house
            ) {
                HomeScreen()
            }

            Tab(
                TabViewConstants.searchWording,
                systemImage: TabViewConstants.searchIcon,
                value: .search
            ) {
                Image(systemName: TabViewConstants.searchIcon)
                    .imageScale(.large)
                    .foregroundStyle(.blue)
                Text("Tela em construção")
            }

            Tab(
                TabViewConstants.profileWording,
                systemImage: TabViewConstants.profileIcon,
                value: .profile
            ) {
                ProfileView()
            }
        }
        .tint(.white)
    }
}

#Preview {
    TabViewContainer(selectedTab: .house)
}

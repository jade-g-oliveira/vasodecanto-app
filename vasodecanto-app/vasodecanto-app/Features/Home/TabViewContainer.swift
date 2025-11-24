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
    // MARK: When the used key already exists with a previously defined value, the previous value is used and the true value of this current view is ignored.
    @AppStorage("isFirstAccess") private var isFirstAccess: Bool = true
    @EnvironmentObject private var authManager: AuthManager

    @State var selectedTab: TabKey

    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(
                TabViewConstants.listWording,
                systemImage: TabViewConstants.listIcon,
                value: .house
            ) {
                MyListScreen()
            }

            Tab(
                TabViewConstants.searchWording,
                systemImage: TabViewConstants.searchIcon,
                value: .search
            ) {
                HomeScreen()
            }

            Tab(
                TabViewConstants.profileWording,
                systemImage: TabViewConstants.profileIcon,
                value: .profile
            ) {
                ProfileView(authManager: authManager)
            }
        }
        .onAppear {
            isFirstAccess = false
        }
        .tint(.white)
    }
}

#Preview {
    TabViewContainer(selectedTab: .house)
}

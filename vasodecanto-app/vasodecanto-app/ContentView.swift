//  ContentView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager
    @AppStorage("isFirstAccess") private var isFirstAccess: Bool = true

    var body: some View {
        Group {
            if authManager.isAuthenticated || isFirstAccess {
                OnboardingView(isFirstAccess: $isFirstAccess)
            } else {
                TabViewContainer(selectedTab: .search)
            }
        }
        .animation(.easeInOut(duration: 0.5), value: isFirstAccess)
    }
}

#Preview {
    ContentView()
}

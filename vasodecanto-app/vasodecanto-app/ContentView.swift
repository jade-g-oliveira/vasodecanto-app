//  ContentView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authManager: AuthManager

    var body: some View {
        Group {
            if authManager.isAuthenticated {
                TabViewContainer(selectedTab: .search)
            } else {
                OnboardingView()
            }
        }
    }
}

#Preview {
    ContentView()
}

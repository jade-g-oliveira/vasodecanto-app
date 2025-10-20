//  ContentView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.

import SwiftUI

struct ContentView: View {
    let isFirstAccess: Bool = false
    var body: some View {
        NavigationStack {
            if isFirstAccess {
                OnboardingView()
            } else {
                TabViewContainer(selectedTab: .house)
            }
        }
    }
}

#Preview {
    ContentView()
}

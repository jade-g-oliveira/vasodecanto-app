//  vasodecanto_appApp.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.

import SwiftUI
import UIKit

@main
struct VasoDeCantoApp: App {
    init() {
        let appearance = UITabBarAppearance()
        let itemAppearance = appearance.stackedLayoutAppearance

        itemAppearance.normal.iconColor = UIColor(Color.white.opacity(0.8))
        itemAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor(Color.white.opacity(0.8))
        ]

        itemAppearance.selected.iconColor = UIColor.white
        itemAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]

        appearance.backgroundColor = UIColor.primaryApp
        UITabBar.appearance().standardAppearance = appearance

        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

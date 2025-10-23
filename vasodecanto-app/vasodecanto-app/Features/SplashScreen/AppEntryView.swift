//
//  AppEntryView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 22/10/25.
//

//
//  AppEntryView.swift
//  vasodecanto-app
//
//  Este arquivo gerencia a transição da SplashScreen para a HomeScreen.
//

import SwiftUI

struct AppEntryView: View {

    // MARK: - ESTADO & PROPRIEDADES

    @State private var isActive: Bool = false

    private let splashDuration: Double = 2.0

    // MARK: - BODY

    var body: some View {
        if isActive {
            HomeScreen()
        } else {
            SplashScreenView()
                .onAppear {
                    startTransitionTimer()
                }
        }
    }

    // MARK: - FUNÇÕES

    private func startTransitionTimer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + splashDuration) {
            withAnimation(.easeOut) {
                self.isActive = true
            }
        }
    }
}

// MARK: - PRÉ-VISUALIZAÇÃO

struct AppEntryView_Previews: PreviewProvider {
    static var previews: some View {
        AppEntryView()
    }
}

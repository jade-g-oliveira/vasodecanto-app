//  ContentView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.

import SwiftUI

struct ContentView: View {
    // Variável de estado para controlar se a sheet está visível
    @State private var showingBottomSheet = false
    var body: some View {
        NavigationStack {
            NavigationLink {
                // 1. O destino: a View para onde você quer ir
                LoginView()
            } label: {
                // 2. O rótulo: o que o usuário vai ver
                Text("Login")
            }
            .buttonStyle(.borderedProminent)
            Button("Abrir Bottom Sheet") {
                showingBottomSheet = true
            }
            .sheet(isPresented: $showingBottomSheet) {
                // conteúdo da bottomsheet
                PlantDetailBottomSheet()
            }

            NavigationLink {
                TabViewContainer(selectedTab: .house)
            } label: {
                Text("Lista de plantas")
            }
            .buttonStyle(.borderedProminent)

            NavigationLink {
                PlantDetailsScreen()
            } label: {
                Text("Detalhes da Planta")
            }
            .buttonStyle(.borderedProminent)

            NavigationLink {
                ProfileView()
            } label: {
                Text("Perfil")
            }
            .buttonStyle(.borderedProminent)
            NavigationLink {
                OnboardingView()
            } label: {
                Text("Onboarding")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}

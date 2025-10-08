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
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()

            //Exemplo de navegação
            // O NavigationLink em si
            NavigationLink {
                // 1. O destino: a View para onde você quer ir
                LoginView()
            } label: {
                // 2. O rótulo: o que o usuário vai ver (seu botão!)
                Text("Ir para Login") // Ele automaticamente parece um botão de navegação
            }
            .buttonStyle(.borderedProminent)

            NavigationLink {
                // 1. O destino: a View para onde você quer ir
                TabViewContainer(selectedTab: .house)
            } label: {
                // 2. O rótulo: o que o usuário vai ver (seu botão!)
                Text("Ir para home") // Ele automaticamente parece um botão de navegação
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

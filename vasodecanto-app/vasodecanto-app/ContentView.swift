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
                // 2. O rótulo: o que o usuário vai ver (seu botão!)
                Text("Login")
            }
            .buttonStyle(.borderedProminent)
            Button("Abrir Bottom Sheet") {
                showingBottomSheet = true
            }
            // 2. O modificador .sheet()
            .sheet(isPresented: $showingBottomSheet) {
                // conteúdo da bottomsheet
                PlantDetailBottomSheet()
            }
            NavigationLink {
                // 1. O destino: a View para onde você quer ir
                ProfileView()
            } label: {
                // 2. O rótulo
                Text("Perfil")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}

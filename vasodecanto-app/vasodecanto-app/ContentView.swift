//
//  ContentView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 26/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack() {
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
                                Text("Tap me") // Ele automaticamente parece um botão de navegação
                            }
                            .buttonStyle(.borderedProminent)
            //teste branch main
            //test 2
            //test - pr
        }
    }
}

#Preview {
    ContentView()
}

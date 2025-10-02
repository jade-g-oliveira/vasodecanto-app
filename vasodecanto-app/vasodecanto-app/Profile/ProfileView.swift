//
//  ProfileView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 30/09/25.
//

import SwiftUI

struct ProfileView: View {
    // Dados simulados do usuário (substituir por dados reais quando tiver a fonte)
    let userName: String = "Nome do Usuário"
    let userEmail: String = "teste.email@gmail.com"

    @State private var showingLogoutAlert = false

    var body: some View {
        VStack {
            Spacer(minLength: 120)

            // Seção do perfil (avatar, nome e e-mail)
            VStack(spacing: 16) {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: 170, height: 170)

                Text(userName)
                    .font(.custom("Heebo-Bold", size: 16))
                    .foregroundStyle(Color("GreenTextColor"))

                Text(userEmail)
                    .font(.custom("Heebo-Regular", size: 16))
                    .foregroundStyle(Color("GreenTextColor"))
            }
            .padding(.vertical, 24)

            Spacer()

            // Botão de logoff
            Button {
                showingLogoutAlert = true
            } label: {
                Text("Fazer logoff")
                    .font(.custom("Heebo-SemiBold", size: 16))
                    .foregroundStyle(Color(.systemRed))
                    .frame(maxWidth: .infinity)
                    .frame(height: 56)
                    .background(.white)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule()
                            .stroke(Color("GreenTextColor"), lineWidth: 2)
                    )
            }
            .padding(.horizontal, 24)
            .alert("Deseja sair da sua conta?", isPresented: $showingLogoutAlert) {
                Button("Cancelar", role: .cancel) { }
                Button("Sair", role: .destructive) {
                    // TODO: implementar logoff real (ex.: limpar sessão, navegar, etc.)
                    print("Usuário saiu")
                }
            } message: {
                Text("Você pode entrar novamente quando quiser.")
            }

            Spacer(minLength: 120)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("GrayBackgroundColor")) // Fundo claro
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}

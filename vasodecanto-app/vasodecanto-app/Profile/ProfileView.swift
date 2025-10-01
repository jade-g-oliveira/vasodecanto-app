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
            Spacer(minLength: 60)

            // Seção do perfil (avatar, nome e e-mail)
            VStack(spacing: 12) {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: 160, height: 160)

                Text(userName)
                    .font(.custom("Heebo-Bold", size: 20))
                    .foregroundStyle(Color("GreenTextColor"))

                Text(userEmail)
                    .font(.custom("Heebo-Regular", size: 20))
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
                    .frame(height: 52)
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

            Spacer(minLength: 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("ColorBackgroundLogOff")) // Fundo claro
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}

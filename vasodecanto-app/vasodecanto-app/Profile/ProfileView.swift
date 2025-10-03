//
//  ProfileView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 30/09/25.
//

import SwiftUI

struct ProfileView: View {
    // Dados simulados do usuário
    let userName: String = "Nome do Usuário"
    let userEmail: String = "teste.email@gmail.com"

    @State private var showingLogoutAlert = false

    var body: some View {
        VStack {
            Spacer(minLength: Spacing.giant)

            // Seção do perfil (avatar, nome e e-mail)
            VStack(spacing: Spacing.small) {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: 170, height: 170)

                Text(userName)
                    .font(AppFont.heeboBoldBody())
                    .foregroundStyle(Color("GreenTextColor"))

                Text(userEmail)
                    .font(AppFont.heeboBody())
                    .foregroundStyle(Color("GreenTextColor"))
            }
            .padding(.vertical, Spacing.regular)

            Spacer()

            // Botão de logoff
            Button {
                showingLogoutAlert = true
            } label: {
                Text("Fazer logoff")
                    .font(AppFont.heeboSemiBoldBody())
                    .foregroundStyle(Color(.systemRed))
                    .frame(maxWidth: .infinity)
                    .frame(height: Spacing.xxLarge)
                    .background(.white)
                    .clipShape(Capsule())
                    .overlay(
                        Capsule()
                            .stroke(Color("GreenTextColor"), lineWidth: 2)
                    )
            }
            .padding(.horizontal, Spacing.regular)
            .alert("Deseja sair da sua conta?", isPresented: $showingLogoutAlert) {
                Button("Cancelar", role: .cancel) { }
                Button("Sair", role: .destructive) {
                    // MARK: implementar logoff real (ex.: limpar sessão, navegar, etc.)
                    print("Usuário saiu")
                }
            } message: {
                Text("Você pode entrar novamente quando quiser.")
            }

            Spacer(minLength: Spacing.giant)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("GrayBackgroundColor")) // Fundo claro
    }
}

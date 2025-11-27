//
//  ProfileView.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 30/09/25.
//

import SwiftUI

struct ProfileView: View {

    @EnvironmentObject private var authManager: AuthManager
    @StateObject private var viewModel: ProfileViewModel
    @State private var showingLogoutAlert = false
    @State private var showingLoginSheet = false

    init(authManager: AuthManager) {
        _viewModel = StateObject(wrappedValue: ProfileViewModel(authManager: authManager))
    }

    var body: some View {
        VStack {
            Spacer(minLength: Spacing.giant)
            VStack(spacing: Spacing.small) {
                Circle()
                    .fill(Color(.systemGray4))
                    .frame(width: 170, height: 170)
                
                if authManager.isAuthenticated, let user = authManager.currentUser {
                    Text(user.name ?? "")
                        .font(.heeboBoldBody)
                        .foregroundStyle(Color("GreenTextColor"))
                    Text(user.email ?? "")
                        .font(.heeboBody)
                        .foregroundStyle(Color("GreenTextColor"))
                }
            }
            .padding(.vertical, Spacing.regular)

            Spacer()

            Button {
                if authManager.isAuthenticated {
                    showingLogoutAlert = true
                } else {
                    showingLoginSheet = true
                }
            } label: {
                Text(authManager.isAuthenticated ? "Fazer logoff" : "Fazer login")
                    .font(.heeboSemiBoldBody)
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
            .sheet(isPresented: $showingLoginSheet) {
                            LoginView()
                                .environmentObject(authManager)
                        }
            .alert("Deseja sair da sua conta?", isPresented: $showingLogoutAlert) {
                Button("Cancelar", role: .cancel) { }
                Button("Sair", role: .destructive) {
                    try? viewModel.logOut()
                }
            } message: {
                Text("Você pode entrar novamente quando quiser.")
            }

            Spacer(minLength: Spacing.giant)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("GrayBackgroundColor"))
    }
}

#Preview {
    ProfileView(authManager: AuthManager(initialUser: nil))
}

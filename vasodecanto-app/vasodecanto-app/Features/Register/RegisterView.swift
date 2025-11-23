//
//  RegisterView.swift
//  vasodecanto-app
//
//  Created by Adan on 21/10/25.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var authManager: AuthManager
    @StateObject private var viewModel: RegisterViewModel

    init(authManager: AuthManager) {
        _viewModel = StateObject(wrappedValue: RegisterViewModel(authManager: authManager))
    }

    var body: some View {
        ZStack {
            Image("backGroundRegister")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.1),
                    Color.black.opacity(0.2),
                    Color.black.opacity(0.6)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: Spacing.extraSmall) {
                Spacer()

                Image("planterIconWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(height: Spacing.xxLarge)

                Text("Registre-se")
                    .font(.heeboBoldLarge)
                    .foregroundColor(.white)

                CustomTextField(
                    iconName: "envelope",
                    placeholder: "Digite seu email",
                    text: $viewModel.email
                )

                CustomTextField(
                    iconName: "person",
                    placeholder: "Nome",
                    text: $viewModel.name
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Senha",
                    text: $viewModel.password,
                    isSecure: true
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle.fill",
                    placeholder: "Confirmar senha",
                    text: $viewModel.confirmPassword,
                    isSecure: true
                )

                if !viewModel.password.isEmpty && !viewModel.confirmPassword.isEmpty && !viewModel.isPasswordMatch {
                    Text("As senhas não coincidem.")
                        .foregroundColor(.red)
                }

                Button("CADASTRAR") {
                    print("""
                        Email: \(viewModel.email)
                        Senha: \(viewModel.password)
                        """)
                    viewModel.signIn()
                }
                .disabled(viewModel.name.isEmpty || viewModel.email.isEmpty || viewModel.password.isEmpty || !viewModel.isPasswordMatch)
                .padding()
                .frame(maxWidth: 194, maxHeight: 40)
                .background(Color("SecundaryAppColor"))
                .foregroundColor(.white)
                .cornerRadius(Spacing.small)
                .font(.heeboBoldBody)
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    RegisterView(authManager: AuthManager(initialUser: nil))
}

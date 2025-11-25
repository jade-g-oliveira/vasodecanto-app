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
                if !viewModel.email.isEmpty && !viewModel.isEmailValid {
                    ValidationMessageView(message: "Por favor, insira um email válido.")
                }

                CustomTextField(
                    iconName: "person",
                    placeholder: "Nome completo",
                    text: $viewModel.name
                )
                if !viewModel.name.isEmpty && !viewModel.isValidName {
                    ValidationMessageView(message: "Por favor, insira nome e sobrenome.")
                }

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Digite sua senha",
                    text: $viewModel.password,
                    isSecure: true
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Confirmar senha",
                    text: $viewModel.confirmPassword,
                    isSecure: true
                )
                if !viewModel.password.isEmpty && !viewModel.confirmPassword.isEmpty && !viewModel.passwordsMatch {
                    ValidationMessageView(message: "As senhas não coincidem.")
                }
                Button("CADASTRAR") {
                    print("""
                        Email: \(viewModel.email)
                        Senha: \(viewModel.password)
                        """)
                    viewModel.signIn()
                }
                .padding()
                .frame(maxWidth: 194, maxHeight: Spacing.large)
                .background(viewModel.isButtonDisabled ? Color.gray : Color("SecundaryAppColor"))
                .foregroundColor(.white)
                .cornerRadius(Spacing.small)
                .font(.heeboBoldBody)
                .disabled(viewModel.isButtonDisabled)
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    RegisterView(authManager: AuthManager(initialUser: nil))
}

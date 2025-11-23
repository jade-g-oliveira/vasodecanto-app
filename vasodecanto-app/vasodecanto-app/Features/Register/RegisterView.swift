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
    @State private var email = ""
    @State private var name = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var isValidName: Bool {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedName.count >= 3 && trimmedName.contains(" ")
    }
    
    var isEmailValid: Bool {
        email.isValidEmail
    }
    
    var passwordsMatch: Bool {
        password == confirmPassword
    }

    var isButtonDisabled: Bool {
        let isAnyFieldEmpty = email.isEmpty || name.isEmpty || password.isEmpty || confirmPassword.isEmpty
        if isAnyFieldEmpty {
            return true
        }
        return !isEmailValid || !isValidName || !passwordsMatch
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
                if !email.isEmpty && !isEmailValid {
                    ValidationMessageView(message: "Por favor, insira um email válido.")
                }

                CustomTextField(
                    iconName: "person",
                    placeholder: "Nome completo",
                    text: $name
                )
                if !name.isEmpty && !isValidName {
                    ValidationMessageView(message: "Por favor, insira nome e sobrenome.")
                }

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Digite sua senha",
                    text: $password,
                    isSecure: true
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Confirmar senha",
                    text: $viewModel.confirmPassword,
                    isSecure: true
                )
                if !password.isEmpty && !confirmPassword.isEmpty && !passwordsMatch {
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
                .background(isButtonDisabled ? Color.gray : Color("SecundaryAppColor"))
                .foregroundColor(.white)
                .cornerRadius(Spacing.small)
                .font(.heeboBoldBody)
                .disabled(isButtonDisabled)
            }
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    RegisterView(authManager: AuthManager(initialUser: nil))
}

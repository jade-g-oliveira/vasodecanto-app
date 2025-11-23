//
//  RegisterView.swift
//  vasodecanto-app
//
//  Created by Adan on 21/10/25.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var name = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var isButtonDisabled: Bool {
        email.isEmpty || name.isEmpty || password.isEmpty || confirmPassword.isEmpty
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
                    text: $email
                )

                CustomTextField(
                    iconName: "person",
                    placeholder: "Nome",
                    text: $name
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Digite sua senha",
                    text: $password,
                    isSecure: true
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Confirmar senha",
                    text: $confirmPassword,
                    isSecure: true
                )

                Button("CADASTRAR") {
                    print("""
                        Email: \(email)
                        Nome: \(name)
                        Senha: \(password)
                        Confirmar: \(confirmPassword)
                        """)
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
    RegisterView()
}

//
//  RegisterView.swift
//  vasodecanto-app
//
//  Created by Adan on 21/10/25.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var nome = ""
    @State private var senha = ""
    @State private var confirmarSenha = ""

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
                    text: $nome
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Senha",
                    text: $senha,
                    isSecure: true
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle.fill",
                    placeholder: "Confirmar senha",
                    text: $confirmarSenha,
                    isSecure: true
                )

                Button("CADASTRAR") {
                    print("""
                        Email: \(email)
                        Nome: \(nome)
                        Senha: \(senha)
                        Confirmar: \(confirmarSenha)
                        """)
                }
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
    RegisterView()
}

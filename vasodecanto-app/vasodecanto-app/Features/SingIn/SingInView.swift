//
//  SingInView.swift
//  vasodecanto-app
//
//  Created by Adan on 22/10/25.
//

import SwiftUI

struct SingInView: View {
    @EnvironmentObject private var authManager: AuthManager
    @StateObject private var viewModel: SigninViewModel

    init(authManager: AuthManager) {
        _viewModel = StateObject(wrappedValue: SigninViewModel(authManager: authManager))
    }

    var body: some View {
        ZStack {

            Image("backGroundLogin")
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

                Text("Faça o login")
                    .font(.heeboBoldLarge)
                    .foregroundColor(.white)

                CustomTextField(
                    iconName: "envelope",
                    placeholder: "Digite seu email",
                    text: $viewModel.email
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Senha",
                    text: $viewModel.password,
                    isSecure: true
                )

                Button("LOGIN") {
                    print("""
                        Email: \(viewModel.email)
                        Senha: \(viewModel.password)
                        """)
                    viewModel.logIn()
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
    SingInView(authManager: AuthManager(initialUser: nil))
}

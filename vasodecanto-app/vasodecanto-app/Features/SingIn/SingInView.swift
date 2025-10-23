//
//  SingInView.swift
//  vasodecanto-app
//
//  Created by Adan on 22/10/25.
//

import SwiftUI

struct SingInView: View {
    @State private var email = ""
    @State private var senha = ""

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

            VStack(spacing: 8) {
                Spacer()

                Image("planterIconWhite")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 56)

                Text("Faça o login")
                    .font(.heeboBoldLarge)
                    .foregroundColor(.white)

                CustomTextField(
                    iconName: "envelope",
                    placeholder: "Digite seu email",
                    text: $email
                )

                CustomTextField(
                    iconName: "ellipsis.rectangle",
                    placeholder: "Senha",
                    text: $senha,
                    isSecure: true
                )

                Button("LOGIN") {
                    print("""
                        Email: \(email)
                        Senha: \(senha)
                        """)
                }
                .padding()
                .frame(maxWidth: 194, maxHeight: 40)
                .background(Color("SecundaryAppColor"))
                .foregroundColor(.white)
                .cornerRadius(16)
                .font(.heeboBoldBody)
            }
            .padding(.bottom, 100)

        }
    }
}

#Preview {
    SingInView()
}

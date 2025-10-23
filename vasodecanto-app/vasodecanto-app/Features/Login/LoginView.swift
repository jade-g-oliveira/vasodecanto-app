//
//  LoginView.swift
//  vasodecanto-app
//
//  Created by Adan on 21/10/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryAppColor")
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    Image("loginPlantIlustration")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 268)
                        .padding(.bottom, Spacing.small)

                    VStack(spacing: Spacing.extraSmall) {
                        // Botão de Login
                        NavigationLink(destination: SingInView()) {
                            Text("LOGIN")
                                .font(.heeboBoldBody)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("SecundaryAppColor"))
                                .cornerRadius(Spacing.small)
                        }

                        // Botão Apple
                        Button(action: {}, label: {
                            HStack {
                                Image(systemName: "applelogo")
                                Text("Continuar com a Apple")
                                    .font(.heeboSemiBoldBody)
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(Spacing.small)
                        })

                        // Botão Google
                        Button(action: {}, label: {
                            HStack {
                                Image("googleLogo")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Continuar com o Google")
                                    .font(.heeboSemiBoldBody)
                            }
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(Spacing.small)
                        })
                    }
                    .padding(.horizontal, Spacing.regular)

                    HStack(spacing: Spacing.micro) {
                        Text("Não tem uma conta?")
                            .foregroundColor(.white)
                        NavigationLink(destination: RegisterView()) {
                            Text("Registre-se")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .underline()
                        }
                    }
                    .font(.heeboMediumBody)
                    .padding(.bottom, 100)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

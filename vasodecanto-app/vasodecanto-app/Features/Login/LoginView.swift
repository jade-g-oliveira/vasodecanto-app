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

                    Image("loginIPlantlustration")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 268)
                        .padding(.bottom, 16)

                    VStack(spacing: 8) {
                        // Botão de Login
                        NavigationLink(destination: SingInView()) {
                            Text("LOGIN")
                                .font(.heeboBoldBody)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color("SecundaryAppColor"))
                                .cornerRadius(16)
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
                            .cornerRadius(16)
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
                            .cornerRadius(16)
                        })
                    }
                    .padding(.horizontal, 24)

                    HStack(spacing: 4) {
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

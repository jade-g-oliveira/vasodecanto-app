//
//  OnboardingView.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 05/10/25.
//
import SwiftUI
struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("PrimaryAppColor").ignoresSafeArea()
                VStack {
                    // Spacer para empurrar o conteúdo principal para baixo
                    Spacer()
                    BubbleView(text: "Adicione uma planta ao seu ambiente.")

                    NavigationLink {
                        // MARK: Adicionar navegação para a lista de plantas
                        TabViewContainer(selectedTab: .house)
                    } label: {
                        Image(systemName: "plus")
                            .font(.heeboBoldGiant) // Tamanho grande para o ícone
                            .foregroundColor(Color("GreenLightColor"))
                            .padding(Spacing.large) // Padding interno para definir o tamanho do círculo
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
                    }
                    .padding(.top, Spacing.small)

                    // Spacer para empurrar o conteúdo para o centro
                    Spacer()
                        .frame(height: Spacing.big)

                    NavigationLink {
                        LoginView()
                    }
                    label: {
                        Text("Já tenho uma conta")
                            .font(.heeboBoldBody)
                            .underline()
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 240)
                }
                .padding(.horizontal, Spacing.big)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct BubbleView: View {
    let text: String
    private let triangleSize: CGFloat = 14
    var body: some View {
        Text(text)
            .font(.heeboBoldBody)
            .foregroundColor(Color("GreenTextColor"))
            .padding(Spacing.extraSmall)
            .background(
                ZStack(alignment: .bottom) {
                    // O Balão de fundo (retângulo arredondado)
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 3)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: triangleSize, height: triangleSize)
                        .rotationEffect(.degrees(45))
                        .offset(y: triangleSize / 3)
                    // Posição abaixo e no meio
                }
            )
            // Fixa a altura máxima para garantir que o texto não se estique muito
            .frame(maxWidth: 200, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}

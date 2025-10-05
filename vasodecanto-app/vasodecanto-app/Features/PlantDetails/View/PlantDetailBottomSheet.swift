//  PlantDetailBottomSheet.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 28/09/25.

import SwiftUI

struct PlantDetailBottomSheet: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Spacer()
                    .frame(height: Spacing.large)
                PlantDetailInfoView()
                Spacer()
                    .frame(height: Spacing.large)
                Divider()
                Spacer()
                    .frame(height: Spacing.extraSmall)
                HStack {
                    // Botão 1: Login (Fundo Marrom)
                    Button("Login") {
                        // Ação do botão Login
                    }
                    .padding(.vertical, Spacing.small)
                    // Faz o botão se expandir horizontalmente
                    .frame(maxWidth: .infinity)
                    .background(Color("PrimaryAppColor"))
                    .foregroundColor(.white)
                    .font(.heeboBoldBody)
                    .cornerRadius(Spacing.small)
                    Spacer().frame(width: Spacing.extraSmall)
                    Button("Mais Informações") {
                        // Ação do botão Mais Informações
                    }
                    .padding(.vertical, Spacing.small)
                    .frame(maxWidth: .infinity)
                    .background(Color("DefaultGrayColor"))
                    .foregroundColor(.white)
                    .font(.heeboBoldBody)
                    .cornerRadius(Spacing.small)
                }.padding(.horizontal, Spacing.regular)
            }.padding(.vertical, Spacing.small)
            Button {
                dismiss() // Chama a ação para fechar a sheet
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: Spacing.regular, weight: .bold))
                    .foregroundColor(Color("GreenTextColor"))
                    .padding(.horizontal, Spacing.regular)
            }
        }
        // controla o tamanho da bottomsheet
        .presentationDetents([.fraction(0.80)])
        .presentationCornerRadius(Spacing.extraLarge)
    }
}

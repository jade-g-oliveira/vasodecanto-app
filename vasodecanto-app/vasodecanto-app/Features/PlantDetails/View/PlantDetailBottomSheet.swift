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
                    .frame(height: 40)
                PlantDetailInfoView()
                Spacer()
                    .frame(height: 40)
                Divider()
                Spacer()
                    .frame(height: 8)
                HStack {
                    // Botão 1: Login (Fundo Marrom)
                    Button("Login") {
                        // Ação do botão Login
                    }
                    .padding(.vertical, 16)
                    // Faz o botão se expandir horizontalmente
                    .frame(maxWidth: .infinity)
                    .background(Color("PrimaryAppColor"))
                    .foregroundColor(.white)
                    .font(AppFont.heeboBodyBold())
                    .cornerRadius(16)
                    Spacer().frame(width: 8)
                    Button("Mais Informações") {
                        // Ação do botão Mais Informações
                    }
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .background(Color("DefaultGrayColor"))
                    .foregroundColor(.white)
                    .font(AppFont.heeboBodyBold())
                    .cornerRadius(16)
                }
                .padding(.horizontal, 24)
                // Empurra o conteúdo para cima
                Spacer()
            }
            // 5. O Botão de Fechar ('X')
            Button {
                dismiss() // Chama a ação para fechar a sheet
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color("GreenTextColor"))
                    .padding(.vertical, 8)
                    .padding(.horizontal, 24)
            }
        }
        .padding(.vertical, 16)
        // controla o tamanho da bottomsheet
        .presentationDetents([.fraction(0.80)])
        .presentationCornerRadius(48)
    }
}

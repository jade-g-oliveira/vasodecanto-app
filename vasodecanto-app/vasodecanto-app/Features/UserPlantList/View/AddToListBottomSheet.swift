//
//  AddToListBottomSheet.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 12/10/25.
//
import SwiftUI

struct AddToListBottomSheet: View {
    @Environment(\.dismiss) var dismiss
    let lists = [
        UserListModel(name: "Sala de Estar", imageName: "LivingRoom")
    ]
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Adicionar a uma lista")
                    .font(.heeboBoldBody)
                    .foregroundColor(Color("GreenTextColor"))
                    .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.system(size: Spacing.regular, weight: .bold))
                        .foregroundColor(Color("GreenTextColor"))
                }
            }
            .padding([.horizontal, .top], Spacing.regular)
                            .padding(.top, 5)
                        // MARK: - Conteúdo Principal (Lista de Listas)
                        ScrollView {
                            ForEach(lists, id: \.name) { list in
                                HStack {
                                    VStack {
                                        Image("livingRoom")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 144, height: 144)
                                            .clipShape(RoundedRectangle(cornerRadius: Spacing.small))
                                        Text(list.name)
                                            .font(.heeboMediumCaption)
                                            .foregroundColor(Color("GreenTextColor"))
                                    }
                                    Spacer()
                                }
                                .padding(.vertical, Spacing.regular)
                                .padding(.horizontal, Spacing.large)
                            }
                        }
                        Spacer()
                        // MARK: - Botão de Ação Inferior
                        Button("Criar uma lista") {
                        }
                        .padding(.vertical, Spacing.small)
                        .font(.heeboBoldBody)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color("PrimaryAppColor"))
                        .cornerRadius(Spacing.small)
                        .padding(.horizontal, Spacing.regular)
                        .padding(.bottom, Spacing.regular)
                        .presentationDetents([.fraction(0.80)])
                        .presentationCornerRadius(Spacing.extraLarge)

                    }
        }
    }

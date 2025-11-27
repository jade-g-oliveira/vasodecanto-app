//
//  MyListScreen.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 14/10/25.
//

import SwiftUI

struct MyListScreen: View {
    @StateObject private var viewModel = MyListViewModel()
    @State var goToPlants = false

    @State private var showingAddListAlert = false
    @State private var newListTitle: String = ""

    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                NavigationStack {
                    ScrollView {
                        VStack(spacing: Spacing.small) {
                            MyListHeader(title: "Minhas listas", onEdit: {
                                viewModel.isEditing.toggle()
                            })
                            .padding(.top, Spacing.extraSmall)

                            if viewModel.lists.isEmpty {
                                EmptyStateView()
                                    .padding(.horizontal, Spacing.small)
                            } else {
                                VStack(spacing: Spacing.small) {
                                    ForEach(viewModel.lists) { list in
                                        MyListCard(list: list, isEditing: viewModel.isEditing) {
                                            goToPlants = true
                                        } onDelete: {
                                            viewModel.delete(list)
                                        }
                                    }
                                }
                                .padding(.horizontal, Spacing.small)
                            }

                            CreateListButton(action: {
                                showingAddListAlert = true
                            })
                            .padding(.horizontal, Spacing.small)
                            .padding(.top, Spacing.small)
                        }
                        .padding(.bottom, Spacing.small)
                    }
                    .padding(.top, Spacing.extraSmall)

                    NavigationLink(
                        destination: ListsPlantsView(),
                        isActive: $goToPlants
                    ) {
                        EmptyView()
                    }
                    .hidden()
                }
                .padding(.bottom, Spacing.small)
            }
            .background(Color(.systemGroupedBackground))
        }
        .navigationBarHidden(true)
        .alert("Nova Lista", isPresented: $showingAddListAlert) {
            TextField("Nome da Lista", text: $newListTitle)

            Button("Criar") {
                viewModel.createList(withTitle: newListTitle)
                newListTitle = ""
            }
            Button("Cancelar", role: .cancel) {
                newListTitle = ""
            }
        } message: {
            Text("Digite o nome para sua nova lista.")
        }
    }

    #Preview {
        TabViewContainer(selectedTab: .house)
    }
}

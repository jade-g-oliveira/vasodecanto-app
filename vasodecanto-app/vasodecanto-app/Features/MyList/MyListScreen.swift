//
//  MyListScreen.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 14/10/25.
//

import SwiftUI

struct MyListScreen: View {
    @State private var selectedTab: CustomTabBar.Tab = .listas
    @StateObject private var viewModel = MyListViewModel()
    var body: some View {
        ZStack(alignment: .bottom) {
            // Conteúdo principal
            Group {
                switch selectedTab {
                case .listas:
                    NavigationStack {
                        ScrollView {
                            VStack(spacing: 16) {
                                MyListHeader(title: "Minhas listas", onEdit: {
                                    viewModel.isEditing.toggle()
                                })
                                .padding(.top, 8)

                                if viewModel.lists.isEmpty {
                                    EmptyStateView()
                                        .padding(.horizontal, 16)
                                } else {
                                    VStack(spacing: 16) {
                                        ForEach(viewModel.lists) { list in
                                            MyListCard(list: list, isEditing: viewModel.isEditing) {
                                                // onTap
                                            } onDelete: {
                                                viewModel.delete(list)
                                            }
                                        }
                                    }
                                    .padding(.horizontal, 16)
                                }

                                CreateListButton(action: {
                                    viewModel.createList()
                                })
                                .padding(.horizontal, 16)
                                .padding(.top, 16)
                            }
                            .padding(.bottom, 96)
                        }
                        .background(Color(.systemGroupedBackground))
                        .navigationBarHidden(true)
                    }

                case .adicionar:
                    HomeScreen()

                case .perfil:
                    ProfileView()
                }
            }
            // Tab Bar personalizada
            CustomTabBar(selectedTab: $selectedTab)
                .padding(.horizontal, 0)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

#Preview {
    MyListScreen()
}

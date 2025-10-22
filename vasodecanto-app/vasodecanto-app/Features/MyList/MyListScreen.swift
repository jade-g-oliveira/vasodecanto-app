//
//  MyListScreen.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 14/10/25.
//

import SwiftUI

struct MyListScreen: View {
    @StateObject private var viewModel = MyListViewModel()
    var body: some View {
        ZStack(alignment: .bottom) {
            // Conteúdo principal
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
                                                // onTap
                                            } onDelete: {
                                                viewModel.delete(list)
                                            }
                                        }
                                    }
                                    .padding(.horizontal, Spacing.small)
                                }

                                CreateListButton(action: {
                                    viewModel.createList()
                                })
                                .padding(.horizontal, Spacing.small)
                                .padding(.top, Spacing.small)
                            }
                            .padding(.bottom, Spacing.small)
                        }
                        .background(Color(.systemGroupedBackground))
                        .navigationBarHidden(true)
                    }

                }
            }
        }
    }

#Preview {
    TabViewContainer(selectedTab: .house)
}

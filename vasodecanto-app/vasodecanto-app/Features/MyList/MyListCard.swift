//
//  MyListCard.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct MyListCard: View {
    var list: MyList
    var isEditing: Bool
    var onTap: () -> Void
    var onDelete: () -> Void
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("LivingRoomList")
                .resizable()
                .scaledToFill()
                .frame(height: 157)
                .clipped()
                .overlay(
                    LinearGradient(
                        colors: [Color.black.opacity(0.41), Color.black.opacity(0.0)],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            VStack(alignment: .leading, spacing: 4) {
                Text(list.title.uppercased())
                    .font(.staatlichesRegularTitle)
                    .foregroundStyle(.white)
                Text("\(list.itemCount) Itens")
                    .font(.custom("Heebo-Bold", size: 12))
                    .foregroundStyle(.white)
            }
            .padding(.top, Spacing.large)
            .padding(.leading, Spacing.small)
            if isEditing {
                HStack {
                    Spacer()
                    Button(role: .destructive) {
                        onDelete()
                    } label: {
                        Image(systemName: "trash")
                            .font(.system(size: 16, weight: .bold))
                            .padding(10)
                            .background(.regularMaterial)
                            .clipShape(Circle())
                    }
                }
                .padding(Spacing.small)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            }
        }
        .contentShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .onTapGesture { onTap() }
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}

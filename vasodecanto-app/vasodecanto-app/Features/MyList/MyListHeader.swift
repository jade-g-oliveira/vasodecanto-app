//
//  MyListHeader.swift
//  vasodecanto-app
//
//  Created by Paulo Roberto on 15/10/25.
//

import SwiftUI

struct MyListHeader: View {
    var title: String
    var onEdit: () -> Void
    var body: some View {
        ZStack {
            Text(title)
                .font(.heeboBoldLarge)
                .foregroundStyle(Color("GreenPlaceHolderColor"))
                .frame(maxWidth: .infinity, alignment: .center)
            HStack {
                Spacer()
                Button("Editar", action: onEdit)
                    .font(.heeboBoldCaption)
                    .foregroundStyle(Color(.greenText))
            }
            .padding(.horizontal, Spacing.small)
        }
        .padding(.horizontal, Spacing.small)
    }
}
#Preview {
    TabViewContainer(selectedTab: .house)
}

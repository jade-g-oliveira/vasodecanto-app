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
                .font(.custom("Heebo-Bold", size: 24))
                .foregroundStyle(Color("GreenPlaceHolderColor"))
                .frame(maxWidth: .infinity, alignment: .center)
            HStack {
                Spacer()
                Button("Editar", action: onEdit)
                    .font(.custom("Heebo-Medium", size: 14))
                    .foregroundStyle(Color("GreenPlaceHolderColor"))
            }
            .padding(.horizontal, 16)
        }
        .padding(.horizontal, 16)
    }
}
#Preview {
    MyListScreen()
}

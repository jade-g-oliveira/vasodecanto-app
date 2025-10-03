//  PlantDetailInfoTexts.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.

import SwiftUI

struct PlantDetailInfoHeader: View {
    var body: some View {
        VStack {
            Image("PlantIlustration1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Spacer()
                .frame(height: Spacing.extraSmall)
            Text("Calatéia")
                .font(AppFont.staatlichesRegularTitle())
                .foregroundColor(Color("GreenTextColor"))
            Text("calathea reseopicta")
                .font(AppFont.alegreyaItalicBody())
                .foregroundColor(Color("GreenTextColor"))
            Spacer()
                .frame(height: Spacing.extraSmall)
            Text("Texto demonstrativo Texto demonstrativo Texto demonstrativo Texto")
                .font(AppFont.heeboCaption())
                .foregroundColor(Color("GreenTextColor"))
                .multilineTextAlignment(.center)
                .lineLimit(3)
            Spacer()
                .frame(height: Spacing.extraSmall)
            Text("Benefícios:")
                .font(AppFont.heeboMediumCaption())
                .foregroundColor(Color.black)
        }
        .padding(.horizontal, Spacing.xxLarge)
    }
}

#Preview {
    ContentView()
}

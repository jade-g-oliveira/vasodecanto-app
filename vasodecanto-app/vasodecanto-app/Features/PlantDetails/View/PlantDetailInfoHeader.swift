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
                .frame(height: 8)
            Text("Calatéia")
                .font(.custom("Staatliches-Regular", size: 32.0))
                .foregroundColor(Color("GreenTextColor"))
            Text("calathea reseopicta")
                .font(.custom("Alegreya-Italic", size: 16.0))
                .foregroundColor(Color("GreenTextColor"))
            Spacer()
                .frame(height: 8)
            Text("Texto demonstrativo Texto demonstrativo Texto demonstrativo Texto")
                .font(AppFont.heeboCaption())
                .foregroundColor(Color("GreenTextColor"))
                .multilineTextAlignment(.center)
                .lineLimit(3)
            Spacer()
                .frame(height: 8)
            Text("Benefícios:")
                .font(.custom("Heebo-Medium", size: 14.0))
                .foregroundColor(Color.black)
        }
        .padding(.horizontal, 80)
    }
}

//
//  PlantDetailInfo.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 28/09/25.
//
import SwiftUI

struct PlantDetailInfoView: View {
    var body: some View {
        // 2. A Imagem/Ilustração
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
            Text("Texto demonstrativo Texto demonstrativo Texto demonstrativo Texto demonstrativo Texto demonstrativo Texto ")
                .font(.custom("Heebo-Regular", size: 14.0))
                .foregroundColor(Color("GreenTextColor"))
                .multilineTextAlignment(.center)
                .lineLimit(3)
            Spacer()
                .frame(height: 8)
            Text("Benefícios:")
                .font(.custom("Heebo-Medium", size: 14.0))
                .foregroundColor(Color.black)
        }
        .padding(.horizontal, 24)
    }
}

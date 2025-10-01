//
//  PlantCardView.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 30/09/25.
//

import SwiftUI

struct CardImage: View {
    var body: some View {
        Image(Constants.Assets.calateiaPlant)
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
            .foregroundColor(Color.green.opacity(0.7))
            .padding(.top, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct PlantCardView: View {
    let item: Int

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)

            VStack {
                CardImage()
                Text("\(item)")
                Text("Calatéia")
                    .font(.custom(Constants.Fonts.regularStaatliches, size: Constants.Sizes.LfontSize))
                    .foregroundColor(Color(Constants.Colors.textGreenColor))

                Text("calathea reseopicta")
                    .font(.custom(Constants.Fonts.italicAlegreya, size: Constants.Sizes.MfontSize))
                    .foregroundColor(Color(Constants.Colors.textGreenColor))

                Text("Benefícios:")
                    .font(.custom("Heebo-Medium", size: Constants.Sizes.SFonstSize))
                    .foregroundColor(Color.black)
            }
        }
        .frame(width: 185, height: 285)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 3)
    }
}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCardView(item: 1)
            .padding(20)
            .background(Color(.systemGray5))
    }
}

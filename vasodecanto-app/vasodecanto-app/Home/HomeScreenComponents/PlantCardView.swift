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
    let plantInfo: PlantInfo
    let index: Int

    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)

            VStack {
                CardImage()
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
        .frame(width: 185, height: index % 2 == 0 ? 230 : 280)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 3)
    }
}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCardView(plantInfo: .init(name: "Calatéia"), index: 1)
            .padding(20)
            .background(Color(.systemGray5))
    }
}

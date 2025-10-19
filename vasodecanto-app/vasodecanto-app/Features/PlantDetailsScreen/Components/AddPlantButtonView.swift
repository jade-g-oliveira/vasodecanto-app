//
//  AddPlantButton.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 15/10/25.
//

import SwiftUI

struct AddPlantButtonView: View {
    var body: some View {
        Button {
            print("Adicionar planta na lista")
        } label: {
            HStack {
                Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                Text("Minha lista")
                    .font(.heeboMediumCaption)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(Color.primaryApp)
            .cornerRadius(8)
        }
        .padding(.horizontal, Spacing.small)
    }
}

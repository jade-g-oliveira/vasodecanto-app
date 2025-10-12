//
//  PlantSearchBar.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 07/10/25.
//

import SwiftUI

struct PlantSearchBarConstants {
    static let searchIcon = "magnifyingglass"
    static let settingIcon = "slider.horizontal.3"
    static let searchWording = "Qual planta você está procurando?"
}

struct PlantSearchBarView: View {
    @State var searchText = ""

    var body: some View {
        HStack {
            HStack {
                Image(systemName: PlantSearchBarConstants.searchIcon)
                    .foregroundStyle(.greenText)

                TextField(PlantSearchBarConstants.searchWording, text: $searchText)
                    .foregroundColor(.greenText)
                    .font(.heeboBody)
                    .background(Color.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal, Spacing.extraSmall)
            .frame(height: 48)
            .background(Color.white)
            .cornerRadius(8)

            Button {
                print("tapped button")
            } label: {
                Image(systemName: PlantSearchBarConstants.settingIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
            }
            .background(Color.primaryApp)
            .frame(width: 32, height: 32)

        }
        .padding()
        .background(Color.primaryApp)
    }
}

#Preview {
    PlantSearchBarView(searchText: "")
        .padding()
}

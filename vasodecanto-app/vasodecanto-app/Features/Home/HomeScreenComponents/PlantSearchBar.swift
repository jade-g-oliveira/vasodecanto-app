//
//  PlantSearchBar.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 07/10/25.
//

import SwiftUI

struct PlantSearchBarView: View {
    @State var searchText = ""

    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.greenText)

                TextField("Qual planta você está procurando?", text: $searchText)
                    .foregroundColor(.greenText)
                    .font(.heeboMediumCaption)
                    .background(Color.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal, 10)
            .frame(height: 40)
            .background(Color.white)
            .cornerRadius(8)

            Button {
                print("tapped button")
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.white)
            }
            .background(Color("PrimaryAppColor"))
            .frame(width: 40, height: 32)

        }
        .padding()
        .background(Color("PrimaryAppColor"))
    }
}

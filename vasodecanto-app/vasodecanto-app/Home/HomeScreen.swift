//
//  HomeScreen.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 29/09/25.
//

import SwiftUI

struct HomeScreen: View {
    let items = Array(1...15)

    var body: some View {
        ScrollView {
            HStack(alignment: .top, spacing: 12) {
                VStack(spacing: 20) {
                    ForEach(items.filter { $0 % 2 == 0 }, id: \.self) { item in
                        PlantCardView(item: item)
                    }
                }
                VStack(spacing: 20) {
                    ForEach(items.filter { $0 % 2 != 0 }, id: \.self) { item in
                        PlantCardView(item: item)
                    }
                }
            }
            .padding()
        }
        .background(Color(hex: 0xE9E7E2))
    }
}

#Preview {
    HomeScreen()
}

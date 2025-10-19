//
//  BenefitsSectionView.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 19/10/25.
//

import SwiftUI

struct BenefitsSectionView: View {
    let plantBenefits: [String: [String: String]]

    var body: some View {
        DisclosureGroup(
            content: {
                VStack(alignment: .leading, spacing: Spacing.small) {
                    ForEach(plantBenefits.sorted(by: { $0.key < $1.key }), id: \.key) { key, itemsDict in
                        VStack(alignment: .leading) {
                            HStack {
                                if let image = itemsDict["image"], let descp = itemsDict["description"] {
                                    Image(systemName: image)
                                        .foregroundColor(.darkBlue)
                                    
                                    Text("\(key): ")
                                        .font(.heeboBoldCaption)
                                        .foregroundColor(.darkBlue)
                                    + Text(descp)
                                        .font(.heeboMediumCaption)
                                        .foregroundColor(.darkBlue)
                                }
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .padding(12)
                        .background(Color.lightYellow)
                        .cornerRadius(12)
                    }
                }
                .padding(.top, 10)
            },
            label: {
                VStack(spacing: Spacing.extraSmall) {
                    Image(systemName: "hand.raised.square.fill")
                        .foregroundColor(.greenText)

                    Text("BENEFÍCIOS")
                        .font(.staatlichesRegularLarge)
                        .foregroundColor(.greenText)
                }
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            }
        )
        .accentColor(.greenText)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BenefitsSectionView(
        plantBenefits: [
            "Purificação": [
                "description": "Remove impurezas e toxinas do ar, deixando o ambiente mais limpo e saudável.",
                "image": "smoke.fill"
            ],
            "Umidificação": [
                "description": "Libera vapor d'água, ajudando a equilibrar a umidade e evitar o ar seco.",
                "image": "humidity.fill"
            ]
        ]
    )
    .padding()
}

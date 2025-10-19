//
//  PlantDetailSectionItemModel.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 18/10/25.
//

import Foundation
import SwiftUI

struct PlantDetailSectionItemModel: Hashable {
    let title: String
    let textColor: Color
    let plant: Plant
    let indicatorLevels: [IndicatorLevel]
    let additionalDescription: String?
    let additionalImage: String?
}

extension PlantDetailSectionItemModel {
    static let example1 = PlantDetailSectionItemModel(
        title: "Exemplo",
        textColor: .darkBlue,
        plant: Plant.calathea,
        indicatorLevels: [.fixture],
        additionalDescription: "Texto demonstrativo",
        additionalImage: "sun.max"
    )

    static let example2 = PlantDetailSectionItemModel(
        title: "Exemplo 2",
        textColor: .primaryApp,
        plant: Plant.calathea,
        indicatorLevels: [
            .fixture,
            .exemple
        ],
        additionalDescription: nil,
        additionalImage: nil
    )
}

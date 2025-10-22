//
//  Plant.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 13/10/25.
//

struct Plant: Equatable, Hashable {
    let name: String
    let scientificName: String
    let basicCare: String
    let benefits: [String: [String: String]]
    let waterFrequency: String
    let lightRequirement: String
    let waterLevel: Int
    let sunLevel: Int
}

extension Plant {
    static let calathea = Plant(
        name: "CALATÉIA",
        scientificName: "calathea reseopicta",
        basicCare: "A calatéia é uma planta linda de folhas decorativas, perfeita para ambientes internos com luz indireta. Gosta de umidade no ar, então se seu ambiente for muito seco.",
        benefits: [
            "Purificação": [
                "description": "Remove impurezas e toxinas do ar, deixando o ambiente mais limpo e saudável.",
                "image": "smoke.fill"
            ],
            "Umidificação": [
                "description": "Libera vapor d'água, ajudando a equilibrar a umidade e evitar o ar seco.",
                "image": "humidity.fill"
            ]
        ],
        waterFrequency: "umas duas a três vezes por semana",
        lightRequirement: "Luz indireta",
        waterLevel: 3,
        sunLevel: 2
    )
}

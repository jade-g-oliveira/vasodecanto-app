//
//  IndicatorLevel.swift
//  vasodecanto-app
//
//  Created by Bruna Fonseca on 18/10/25.
//

import Foundation
import SwiftUI

struct IndicatorLevel: Hashable {
    let labels: [String]
    let color: Color
}

extension IndicatorLevel {
    static let fixture = IndicatorLevel(labels: ["Baixa", "Média", "Alta"], color: .darkBlue)
    static let exemple = IndicatorLevel(labels: ["1", "2", "3", "4", "5"], color: .primaryApp)
}

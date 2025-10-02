//  AppFont.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.

import SwiftUI

// MARK: - Estilos de Fonte do Aplicativo
struct AppFont {
    // MARK: – Estilos Customizados Heebo
    static func heeboCaption() -> Font {
        .custom("Heebo-Regular", size: FontSize.caption)
    }

    static func heeboBody() -> Font {
        .custom("Heebo-Regular", size: FontSize.body)
    }
    
    static func heeboBodyBold() -> Font {
        .custom("Heebo-Bold", size: FontSize.body)
    }
}

//  AppFont.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.

import SwiftUI

// MARK: - Estilos de Fonte do Aplicativo
struct AppFont {
    // MARK: – Estilos Customizados Heebo
    /// - Fonte: **14.0**
    static func heeboCaption() -> Font {
        .custom("Heebo-Regular", size: FontSize.caption)
    }
    /// - Fonte: **14.0**
    static func heeboBoldCaption() -> Font {
        .custom("Heebo-Bold", size: FontSize.caption)
    }
    /// - Fonte: **16.0**
    static func heeboBody() -> Font {
        .custom("Heebo-Regular", size: FontSize.body)
    }
    /// - Fonte: **16.0**
    static func heeboBoldBody() -> Font {
        .custom("Heebo-Bold", size: FontSize.body)
    }
    /// - Fonte: **16.0**
    static func heeboSemiBoldBody() -> Font {
        .custom("Heebo-SemiBold", size: FontSize.body)
    }
    /// - Fonte: **14.0**
    static func heeboMediumCaption() -> Font {
        .custom("Heebo-Medium", size: FontSize.caption)
    }
    // MARK: – Estilos Customizados Staatliches
    static func staatlichesRegularTitle() -> Font {
        .custom("Staatliches-Regular", size: FontSize.title)
    }
    // MARK: – Estilos Customizados Alegreya
    static func alegreyaItalicBody() -> Font {
        .custom("Alegreya-Italic", size: FontSize.body)
    }
}

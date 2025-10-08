//  AppFont.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.

import SwiftUI
extension Font {
    // MARK: - Estilos de Fonte do Aplicativo
        // MARK: – Estilos Customizados Heebo
        /// - Fonte: **14.0**
        static var heeboCaption: Font {
            .custom("Heebo-Regular", size: FontSize.caption)
        }
        /// - Fonte: **14.0**
        static var heeboBoldCaption: Font {
            .custom("Heebo-Bold", size: FontSize.caption)
        }
        /// - Fonte: **16.0**
        static var heeboBody: Font {
            .custom("Heebo-Regular", size: FontSize.body)
        }
        /// - Fonte: **16.0**
        static var heeboBoldBody: Font {
            .custom("Heebo-Bold", size: FontSize.body)
        }
        /// - Fonte: **14.0**
        static var heeboMediumCaption: Font {
            .custom("Heebo-Medium", size: FontSize.caption)
        }
        /// - Fonte: **16.0**
        static var heeboSemiBoldBody: Font {
            .custom("Heebo-SemiBold", size: FontSize.body)
        }
        /// - Fonte: **24.0**
        static var heeboBoldLarge: Font {
            .custom("Heebo-Bold", size: FontSize.large)
        }
        /// - Fonte: **56.0**
        static var heeboBoldGiant: Font {
            .custom("Heebo-Bold", size: FontSize.giant)
        }
        // MARK: – Estilos Customizados Staatliches
        static var staatlichesRegularTitle: Font {
            .custom("Staatliches-Regular", size: FontSize.title)
        }
        // MARK: – Estilos Customizados Alegreya
        static var alegreyaItalicBody: Font {
            .custom("Alegreya-Italic", size: FontSize.body)
        }
}

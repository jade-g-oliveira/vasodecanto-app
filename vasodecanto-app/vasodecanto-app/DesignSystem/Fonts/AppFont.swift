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
        static var heeboBoldTinyCaption: Font {
            .custom("Heebo-Bold", size: FontSize.tinyCaption)
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
        static var heeboMediumBody: Font {
            .custom("Heebo-Medium", size: FontSize.body)
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
        /// - Fonte: **32.0**
        static var heeboBlackTitle: Font {
        .custom("Heebo-Black", size: FontSize.title)
        }
        /// - Fonte: **64.0**
        static var heeboBlackXGiant: Font {
        .custom("Heebo-Black", size: FontSize.xGiant)
        }
        // MARK: – Estilos Customizados Staatliches
        static var staatlichesRegularBody: Font {
            .custom("Staatliches-Regular", size: FontSize.body)
        }
        static var staatlichesRegularLarge: Font {
            .custom("Staatliches-Regular", size: FontSize.large)
        }
        static var staatlichesRegularTitle: Font {
            .custom("Staatliches-Regular", size: FontSize.title)
        }
        static var staatlichesRegularXTitle: Font {
            .custom("Staatliches-Regular", size: FontSize.xTitle)
        }
        // MARK: – Estilos Customizados Alegreya
        static var alegreyaItalicBody: Font {
            .custom("Alegreya-Italic", size: FontSize.body)
        }
}

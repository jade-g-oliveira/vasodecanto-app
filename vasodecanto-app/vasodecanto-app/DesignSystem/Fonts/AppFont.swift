//
//  AppFont.swift
//  vasodecanto-app
//
//  Created by Jade Oliveira on 29/09/25.
//
import SwiftUI

// MARK: - Estilos de Fonte do Aplicativo
struct AppFont {
    
    // Supondo que você queira usar uma fonte customizada (ex: 'Inter-Regular')
    // Se não for usar, pode remover esta função.
    private static func custom(_ name: String, size: CGFloat, weight: Font.Weight = .regular) -> Font {
        // Usa a fonte customizada se o nome for fornecido
        if let customFont = UIFont(name: name, size: size) {
            return Font(customFont)
        }
        // Fallback para a fonte do sistema se a customizada não for encontrada
        return .system(size: size, weight: weight)
    }

    // MARK: - Estilos Padrões (Usando Fontes do Sistema)
    
    /// Estilo para títulos principais. Ex: "title(tamanho: 24, peso: semiBold, família: Sistema)"
    static func title() -> Font {
        return .system(size: FontSize.title, weight: .bold)
    }
    
    /// Estilo para o corpo principal do texto (parágrafos).
    static func body() -> Font {
        return .system(size: FontSize.body, weight: .regular)
    }
    
    /// Estilo para texto auxiliar, como datas ou descrições pequenas.
    static func caption() -> Font {
        return .system(size: FontSize.small, weight: .medium)
    }
    
    // MARK: - Estilo com Customização (Exemplo)
    
    /// Um estilo que usa uma fonte customizada específica.
    static func customHeadline() -> Font {
        // Exemplo de uso da função custom, substitua 'SeuFontCustom' pelo nome real do arquivo da fonte
        return self.custom("SeuFontCustom", size: FontSize.title, weight: .heavy)
    }
}

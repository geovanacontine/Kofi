//
//  KofiLightTheme.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import SwiftUI

struct KofiLightTheme: DesignTheme {
    
    let id = "kofiLightTheme"
    let mode: DesignThemeMode = .light
    
    let tokens: DesignTokens = .init(
        color: .init(
            brand: .init(
                primary: .pink,
                secondary: .pink,
                tertiary: .pink
            ),
            feedback: .init(
                negative: .red,
                positive: .green,
                warning: .orange,
                alert: .blue
            ),
            text: .init(
                primary: .primary,
                secondary: .secondary,
                tertiary: .secondary
            ),
            background: .init(
                primary: .primary,
                secondary: .secondary,
                tertiary: .secondary
            )
        )
    )
    
    init() {}
}

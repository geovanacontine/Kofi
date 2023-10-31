//
//  KofiLightTheme.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import SwiftUI

public struct KofiLightTheme: DesignTheme {
    
    public let id = "kofiLightTheme"
    public let mode: DesignThemeMode = .light
    
    public let tokens: DesignTokens = .init(
        color: .init(
            brand: .init(
                primary10: .init(hex: "#0A84FF"),
                primary20: .init(hex: "#389BFF"),
                primary30: .init(hex: "#80BFFF"),
                highlight10: .init(hex: "#FF9F0A"),
                highlight20: .init(hex: "#FFB94D"),
                highlight30: .init(hex: "#FFD594")
            ),
            feedback: .init(
                warning10: .init(hex: "#FFD633"),
                warning20: .init(hex: "#FFEB99"),
                warning30: .init(hex: "#FFF5CC"),
                negative10: .init(hex: "#FF6A61"),
                negative20: .init(hex: "#FFB5B0"),
                negative30: .init(hex: "#FFDAD8"),
                positive10: .init(hex: "#5DD27A"),
                positive20: .init(hex: "#AEE9BD"),
                positive30: .init(hex: "#D6F4DE")
            ),
            label: .init(
                primary: .primary,
                secondary: .secondary,
                tertiary: .secondary,
                quarternary: .secondary
            ),
            background: .init(
                primary: .init(hex: "#000000"),
                secondary: .init(hex: "#1C1C1E"),
                tertiary: .init(hex: "#2C2C2E")
            )
        ),
        font: .init(),
        padding: .init(),
        border: .init(),
        borderRadius: .init(),
        shadow: .init(),
        opacity: .init()
    )
    
    public init() {}
}

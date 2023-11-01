//
//  KofiLightTheme.swift
//  Kofi
//
//  Created by Geovana Contine on 31/10/23.
//

import SwiftUI
import GeoKit

struct KofiLightTheme: DesignTheme {
    
    let id = "kofiLightTheme"
    let mode: DesignThemeMode = .light
    
    let tokens: DesignTokens = .init(
        color: .init(
            brandPrimary: .init(hex: "C59968"),
            brandSecondary: .init(hex: "503B24"),
            brandTertiary: .init(hex: "AA7942"),
            feedbackNegative: .init(hex: "D70015"),
            feedbackPositive: .init(hex: "2C8341"),
            feedbackWarning: .init(hex: "FF8311"),
            feedbackAlert: .init(hex: "1E6FE8"),
            backgroundPrimary: .init(hex: "F2F2F7"),
            backgroundSecondary: .init(hex: "FFFFFF"),
            backgroundTertiary: .init(hex: "EFEFF0"),
            textPrimary: .init(hex: "242426"),
            textSecondary: .init(hex: "7C7C80"),
            textTertiary: .init(hex: "AEAEB2")
        )
    )
    
    init() {}
}

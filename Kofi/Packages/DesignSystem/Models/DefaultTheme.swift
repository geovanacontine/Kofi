import SwiftUI

public struct DefaultTheme: DesignTheme {
    
    public let id = "defaultTheme"
    public let mode: DesignThemeMode = .light
    
    public let tokens: DesignTokens = .init(
        color: .init(
            brand: .init(
                primary10: .accentColor,
                primary20: .accentColor,
                primary30: .accentColor,
                highlight10: .orange,
                highlight20: .orange,
                highlight30: .orange
            ),
            feedback: .init(
                warning10: .orange,
                warning20: .orange,
                warning30: .orange,
                negative10: .red,
                negative20: .red,
                negative30: .red,
                positive10: .green,
                positive20: .green,
                positive30: .green
            ),
            label: .init(
                primary: .primary,
                secondary: .secondary,
                tertiary: .secondary,
                quarternary: .secondary
            ),
            background: .init(
                primary: .primary,
                secondary: .secondary,
                tertiary: .secondary
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

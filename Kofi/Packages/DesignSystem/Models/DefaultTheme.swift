import SwiftUI

public struct DefaultTheme: DesignTheme {
    
    public let id = "defaultTheme"
    public let mode: DesignThemeMode = .light
    
    public let tokens: DesignTokens = .init(
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
    
    public init() {}
}

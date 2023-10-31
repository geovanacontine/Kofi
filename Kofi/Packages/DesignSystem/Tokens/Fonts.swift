import SwiftUI

public struct Fonts {
    
    // LargeTitle
    public let largeTitle = FontStyle(textStyle: .largeTitle, weight: .regular)
    public let largeTitleEmphasized = FontStyle(textStyle: .largeTitle, weight: .bold)
    
    // Title
    public let title1 = FontStyle(textStyle: .title, weight: .regular)
    public let title1Emphasized = FontStyle(textStyle: .title, weight: .bold)
    
    // Title2
    public let title2 = FontStyle(textStyle: .title2, weight: .regular)
    public let title2Emphasized = FontStyle(textStyle: .title2, weight: .bold)
    
    // Title3
    public let title3 = FontStyle(textStyle: .title3, weight: .regular)
    public let title3Emphasized = FontStyle(textStyle: .title3, weight: .semibold)
    
    // Headline
    public let headline = FontStyle(textStyle: .headline, weight: .semibold)
    public let headlineEmphasized = FontStyle(textStyle: .headline, weight: .heavy)
    
    // Body
    public let body = FontStyle(textStyle: .body, weight: .regular)
    public let bodyEmphasized = FontStyle(textStyle: .body, weight: .semibold)
    
    // Callout
    public let callout = FontStyle(textStyle: .callout, weight: .regular)
    public let calloutEmphasized = FontStyle(textStyle: .callout, weight: .semibold)
    
    // Subheadline
    public let subheadline = FontStyle(textStyle: .subheadline, weight: .regular)
    public let subheadlineEmphasized = FontStyle(textStyle: .subheadline, weight: .semibold)
    
    // Footnote
    public let footnote = FontStyle(textStyle: .footnote, weight: .regular)
    public let footnoteEmphasized = FontStyle(textStyle: .footnote, weight: .semibold)
    
    // Caption
    public let caption1 = FontStyle(textStyle: .caption, weight: .regular)
    public let caption1Emphasized = FontStyle(textStyle: .caption, weight: .medium)
    
    // Caption2
    public let caption2 = FontStyle(textStyle: .caption2, weight: .regular)
    public let caption2Emphasized = FontStyle(textStyle: .caption2, weight: .semibold)
}

// MARK: - FontStyle

public struct FontStyle {
    let textStyle: Font.TextStyle
    let weight: Font.Weight
}

// MARK: - TextStyleModifier

struct TextStyleModifier: ViewModifier {
    
    @Environment(\.designTokens) var tokens
    
    let style: FontStyle
    let customColor: Color?
    
    func body(content: Content) -> some View {
        content
            .font(.system(style.textStyle, weight: style.weight))
            .foregroundColor(customColor ?? tokens.color.label.primary)
    }
}

// MARK: - Style

public extension Text {
    func textStyle(_ style: FontStyle, withColor color: Color? = nil) -> some View {
        modifier(
            TextStyleModifier(style: style, customColor: color)
        )
    }
}

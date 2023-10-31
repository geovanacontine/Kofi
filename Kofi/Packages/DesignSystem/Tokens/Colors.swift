import SwiftUI

public struct Colors {
    public let brand: BrandColors
    public let feedback: FeedbackColors
    public let text: TextColors
    public let background: BackgroundColors
}

public struct BrandColors {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
}

public struct FeedbackColors {
    public let negative: Color
    public let positive: Color
    public let warning: Color
    public let alert: Color
}

public struct BackgroundColors {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
}

public struct TextColors {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
}

public enum ColorType {
    case brandPrimary
    case brandSecondary
    case brandTertiary
    
    case feedbackNegative
    case feedbackPositive
    case feedbackWarning
    case feedbackAlert
    
    case backgroundPrimary
    case backgroundSecondary
    case backgroundTertiary
}

public extension ColorType {
    func color(tokens: DesignTokens) -> Color {
        switch self {
        case .brandPrimary: tokens.color.brand.primary
        case .brandSecondary: tokens.color.brand.secondary
        case .brandTertiary: tokens.color.brand.tertiary
        case .feedbackNegative: tokens.color.feedback.negative
        case .feedbackPositive: tokens.color.feedback.positive
        case .feedbackWarning: tokens.color.feedback.warning
        case .feedbackAlert: tokens.color.feedback.alert
        case .backgroundPrimary: tokens.color.background.primary
        case .backgroundSecondary: tokens.color.background.secondary
        case .backgroundTertiary: tokens.color.background.tertiary
        }
    }
}

// MARK: - Modifier

struct ColorModifier: ViewModifier {
    
    @Environment(\.designTokens) var tokens
    
    let type: ColorType
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(type.color(tokens: tokens))
    }
}

public extension View {
    func color(_ type: ColorType) -> some View {
        modifier(
            ColorModifier(type: type)
        )
    }
}

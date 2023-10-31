import SwiftUI

public struct Colors {
    public let brand: BrandColors
    public let feedback: FeedbackColors
    public let label: LabelColors
    public let background: BackgroundColors
}

public struct BrandColors {
    
    // Primary
    public let primary10: Color
    public let primary20: Color
    public let primary30: Color
    
    // Highlight
    public let highlight10: Color
    public let highlight20: Color
    public let highlight30: Color
}

public struct FeedbackColors {
    
    // Warning
    public let warning10: Color
    public let warning20: Color
    public let warning30: Color
    
    // Negative
    public let negative10: Color
    public let negative20: Color
    public let negative30: Color
    
    // Positive
    public let positive10: Color
    public let positive20: Color
    public let positive30: Color
}

public struct LabelColors {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let quarternary: Color
}

public struct BackgroundColors {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
}

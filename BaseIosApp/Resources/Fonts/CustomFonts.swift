import SwiftUI

enum CustomFonts: String {
    case ubuntu = "Ubuntu"
}

struct FontBuilder {
    
    let font: Font
    let tracking: Double
    let lineSpacing: Double
    let verticalPadding: Double
    
    init(
        customFont: CustomFonts,
        fontSize: Double,
        letterSpacing: Double,
        lineHeight: Double
    ) {
        self.font = Font.custom(customFont, size: fontSize)
        self.tracking = fontSize * letterSpacing
        
        let uiFont = UIFont(name: customFont.rawValue, size: fontSize) ?? .systemFont(ofSize: fontSize)
        self.lineSpacing = lineHeight - uiFont.lineHeight
        self.verticalPadding = (lineHeight - uiFont.lineHeight) / 2
    }
    
}

extension FontBuilder {
    
    static let title = FontBuilder(
        customFont: .ubuntu,
        fontSize: 18,
        letterSpacing: 1,
        lineHeight: 24
    )
    
}


extension Font {
    
    static func custom(_ fontName: CustomFonts, size: Double) -> Font {
        Font.custom(fontName.rawValue, size: size)
    }
    
}

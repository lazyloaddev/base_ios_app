import SwiftUI

struct CalculatorScreen: View {
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            TextPanel()
            ButtonPanel { buttonType in
                handleTap(buttonType: buttonType)
            }
        }
        .background(.black)
    }
    
    func handleTap(buttonType: CalcButtonType) {
        switch buttonType {
        case .clear:
            print("clear pressed")
        case .inversion:
            print("inversion pressed")
        case .percent:
            print("percent pressed")
        case .divide:
            print("divide pressed")
        case .multiple:
            print("multiple pressed")
        case .minus:
            print("minus pressed")
        case .plus:
            print("plus pressed")
        case .equal:
            print("equal pressed")
        case .dot:
            print("dot pressed")
        case .number(let number):
            print("number \(number) pressed")
        }
    }
    
}

struct TextPanel: View {
    
    var body: some View {
        Text("123.4")
            .foregroundColor(.white)
            .font(Font.system(size: 90, weight: .thin))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding([.leading, .trailing], 30)
    }
    
}


struct ButtonPanel: View {
    
    let action: (CalcButtonType) -> Void
    
    var body: some View {
        let symbolsStyle = CalcButtonStyle(parameters: .symbols)
        let actionStyle = CalcButtonStyle(parameters: .action)
        let numberStyle = CalcButtonStyle(parameters: .number)
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            GridRow {
                makeButton(.clear, symbolsStyle)
                makeButton(.inversion, symbolsStyle)
                makeButton(.percent, symbolsStyle)
                makeButton(.divide, actionStyle)
            }
            GridRow {
                makeButton(.number(7), numberStyle)
                makeButton(.number(8), numberStyle)
                makeButton(.number(9), numberStyle)
                makeButton(.multiple, actionStyle)
            }
            GridRow {
                makeButton(.number(4), numberStyle)
                makeButton(.number(5), numberStyle)
                makeButton(.number(6), numberStyle)
                makeButton(.minus, actionStyle)
            }
            GridRow {
                makeButton(.number(1), numberStyle)
                makeButton(.number(2), numberStyle)
                makeButton(.number(3), numberStyle)
                makeButton(.plus, actionStyle)
            }
            GridRow {
                makeButton(.number(0), numberStyle)
                Spacer()
                makeButton(.dot, numberStyle)
                makeButton(.equal, numberStyle)
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
    
    func makeButton(
        _ type: CalcButtonType,
        _ style: CalcButtonStyle
    ) -> some View {
        CalcButton(type: type, action: action).buttonStyle(style)
    }
}

enum CalcButtonType {
    case clear
    case inversion
    case percent
    case divide
    case multiple
    case minus
    case plus
    case equal
    case dot
    case number(Int)
    
    var title: String {
        switch self {
        case .clear:
            return "AC"
        case .inversion:
            return "±"
        case .percent:
            return "%"
        case .divide:
            return "÷"
        case .multiple:
            return "x"
        case .minus:
            return "-"
        case .plus:
            return "+"
        case .equal:
            return "="
        case .dot:
            return "."
        case .number(let number):
            return "\(number)"
        }
    }
}


struct CalcButton: View {
    
    let type: CalcButtonType
    let action: (CalcButtonType) -> Void

    var body: some View {
        Button(type.title) {
            action(type)
        }
    }
    
}

struct CalcButtonStyle: ButtonStyle {
    
    let parameters: CalcButtonStyleParameters
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(parameters.titleColor)
            .font(Font.system(size: 100))
            .minimumScaleFactor(0.1)
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .aspectRatio(1, contentMode: .fit)
            .background(parameters.backgroundColor)
            .cornerRadius(.infinity)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}

struct CalcButtonStyleParameters {
    let titleColor: Color
    let backgroundColor: Color
    
    static let symbols = CalcButtonStyleParameters(titleColor: .black, backgroundColor: .gray)
    static let number = CalcButtonStyleParameters(titleColor: .white, backgroundColor: Color(.calculatorNumber))
    static let action = CalcButtonStyleParameters(titleColor: .white, backgroundColor: .orange)
}

struct CalculatorScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorScreen()
    }
}

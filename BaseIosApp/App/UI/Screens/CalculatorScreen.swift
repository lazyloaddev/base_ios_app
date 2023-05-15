import SwiftUI

struct CalculatorScreen: View {
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            TextPanel()
            ButtonPanel()
        }
        .background(.black)
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
    
    var body: some View {
        Grid(horizontalSpacing: 10, verticalSpacing: 10) {
            GridRow {
                CalcButton(data: CalcButtonData(title: "AC", style: .symbols))
                CalcButton(data: CalcButtonData(title: "±", style: .symbols))
                CalcButton(data: CalcButtonData(title: "%", style: .symbols))
                CalcButton(data: CalcButtonData(title: "÷", style: .action))
            }
            GridRow {
                CalcButton(data: CalcButtonData(title: "7", style: .number))
                CalcButton(data: CalcButtonData(title: "8", style: .number))
                CalcButton(data: CalcButtonData(title: "9", style: .number))
                CalcButton(data: CalcButtonData(title: "x", style: .action))
            }
            GridRow {
                CalcButton(data: CalcButtonData(title: "4", style: .number))
                CalcButton(data: CalcButtonData(title: "5", style: .number))
                CalcButton(data: CalcButtonData(title: "6", style: .number))
                CalcButton(data: CalcButtonData(title: "-", style: .action))
            }
            GridRow {
                CalcButton(data: CalcButtonData(title: "1", style: .number))
                CalcButton(data: CalcButtonData(title: "2", style: .number))
                CalcButton(data: CalcButtonData(title: "3", style: .number))
                CalcButton(data: CalcButtonData(title: "+", style: .action))
            }
            GridRow {
                CalcButton(data: CalcButtonData(title: "0", style: .number))
                Spacer()
                CalcButton(data: CalcButtonData(title: ".", style: .number))
                CalcButton(data: CalcButtonData(title: "=", style: .number))
            }
        }.fixedSize(horizontal: false, vertical: true)
    }
    
}

struct CalcButtonData {
    let title: String
    let style: CalcButtonStyle
}

struct CalcButtonStyle {
    let titleColor: Color
    let backgroundColor: Color
    
    static let symbols = CalcButtonStyle(titleColor: .black, backgroundColor: .gray)
    static let number = CalcButtonStyle(titleColor: .white, backgroundColor: Color(.calculatorNumber))
    static let action = CalcButtonStyle(titleColor: .white, backgroundColor: .orange)
}

struct CalcButton: View {
    let data: CalcButtonData
    
    var body: some View {
        Text(data.title)
            .foregroundColor(data.style.titleColor)
            .font(Font.system(size: 60))
            .minimumScaleFactor(0.1)
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .aspectRatio(1, contentMode: .fit)
            .background(data.style.backgroundColor)
            .cornerRadius(.infinity)
    }
}


struct CalculatorScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorScreen()
    }
}

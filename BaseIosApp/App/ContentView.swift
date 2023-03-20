import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 10)
                .padding(.bottom, 10)
            Rectangle()
                .fill(.blue)
                .frame(width: 10, height: 100)
                .padding(.bottom, 100)
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 10)
                .padding(.bottom, 5)
            Rectangle()
                .fill(.blue)
                .frame(width: 10, height: 100)
        }
        .border(.red)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.previewLayout(PreviewLayout.sizeThatFits)
    }
}


struct Some {
    @ViewBuilder func someFunc(a: Int) -> some View {
        if a == 1 {
            VStack{
                Text("asdd")
            }
        } else {
            Text("d")
        }
    }
}


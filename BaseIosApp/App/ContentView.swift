import SwiftUI


struct ContentView: View {
    
    @State var number = 0
    
    var body: some View {
        VStack {
            Text("\(number)").monospacedDigit()
                .font(.system(size: 40))
                .padding([.bottom], 10)
            CounterView(number: $number)
        }
    }

}

struct CounterView: View {
    @Binding var number: Int
    
    var body: some View {
        HStack {
            Button {
                number -= 1
            } label: {
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 44, height: 44)
            }
            Text("\(number)").monospacedDigit()
                .font(.system(size: 40))
                .padding([.bottom], 10)
            Button {
                number += 1
            } label: {
                Image(systemName: "plus.square.fill")
                    .resizable()
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

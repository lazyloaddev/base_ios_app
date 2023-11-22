import SwiftUI

struct ContentView: View {

    @State var one = 1
    @State var two = 1

    var body: some View {
        let queue = DispatchQueue(label: "1")
        let queue2 = DispatchQueue(label: "2", target: queue)
        print(one)
        return VStack {
            Button("1") {
                one += 1
            }
            Button("2") {
                two += 1
            }

            V1(s: $one)
            V2(s: $two)

            Text("\(two)")
        }
    }

}


struct V1: View {

    @Binding var s: Int

    var body: some View {
        Button("\(s)") {
            s += 1
        }
    }

}

struct V2: View {

    @Binding var s: Int

    var body: some View {
        Button("\(s)") {
            s += 1
        }
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

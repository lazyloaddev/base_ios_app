import SwiftUI

struct ContentView: View {

    @State var isPresented = false
    @Environment(\.userId) var userId: Int?
    @Environment(AppModel.self) var appModel

    var body: some View {
        NavigationStack {
            VStack {
                Text("Counter: \(appModel.counter)")
                FirstNestedView()
                NavigationLink {
                    FirstNestedView().userId(88)
                } label: {
                    Text("push")
                }
                Button("present") {
                    isPresented = true
                }
            }
        }.sheet(isPresented: $isPresented, content: {
            FirstNestedView()
        })

    }

}

struct FirstNestedView: View {

    @Environment(\.userId) var userId: Int?

    var body: some View {
        VStack {
            Text("FirstNestedView \(userId ?? 0)")
            SecondNestedView()
        }


    }

}

struct SecondNestedView: View {

    @Environment(\.userId) var userId: Int?
    @Environment(AppModel.self) var appModel

    var body: some View {
        VStack {
            Text("SecondNestedView \(userId ?? 0)")
            Button(
                action: { appModel.increaseCounter() },
                label: {
                    Text("increase counter")
                }
            )
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

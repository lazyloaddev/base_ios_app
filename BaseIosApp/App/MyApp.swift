import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        let stringFirst = "Строка 1"
        
        return WindowGroup {
            return VStack {
                Text(stringFirst)
                Text("Строка 2")
                Text("Строка 3")
                Text("Строка 4")
                Text("Строка 5")
                Text("Строка 6")
            }
        }
    }
}

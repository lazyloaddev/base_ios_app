import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        let stringFirst = "Строка 1"
        
        return WindowGroup {
            let stringSecond = "Строка 2"
            
            return VStack {
                Text(stringFirst)
                Text(stringSecond)
                Text("Строка 3")
                Text("Строка 4")
                Text("Строка 5")
                return Text("Строка 6")
            }
        }
    }
}

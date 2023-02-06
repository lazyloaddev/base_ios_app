import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        let stringFirst = "Строка 1"
        
        return WindowGroup {
            let stringSecond = "Строка 2"
            
            return VStack {
                return Text(stringFirst)
                return Text(stringSecond)
                return Text("Строка 3")
                return Text("Строка 4")
                return Text("Строка 5")
                return Text("Строка 6")
            }
        }
    }
}

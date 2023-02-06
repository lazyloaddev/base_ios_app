import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        let stringFirst = "Строка 1"
        let stringSecond = "Строка 2"
        let stringThreed = "Строка 3"
        let stringFourth = "Строка 4"
        
        return WindowGroup {
            return VStack {
                Text(stringFirst)
                Text(stringSecond)
                Text(stringThreed)
                Text(stringFourth)
                Text("Строка 5")
                Text("Строка 6")
            }
        }
    }
}

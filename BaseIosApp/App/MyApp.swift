import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        let stringFirst = "Строка 1"
        
        return WindowGroup {
            let stringSecond = "Строка 2"
            
            return VStack {
                let stringThreed = "Строка 3"
                
                Text(stringFirst)
                Text(stringSecond)
                Text(stringThreed)
                
                let stringFourth = "Строка 4"
                
                Text(stringFourth)
                Text("Строка 5")
                Text("Строка 6")
            }
        }
    }
}

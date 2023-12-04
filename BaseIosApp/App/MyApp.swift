import SwiftUI

@main
struct MyApp: App {
    @State var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .userId(11)
                .environment(appModel)
        }
    }
}

@Observable
class AppModel {
    var counter = 0

    func increaseCounter() {
        counter += 1
    }
}

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Text("Fried eggs with ham, 2 eggs")
                Text("Fried eggs with ham, 2 eggs")
                Text("Fried eggs with ham, 2 eggs")
                Text("Fried eggs with ham, 2 eggs")
            }
            .font(FontBuilder.title.font)
            .lineSpacing(FontBuilder.title.lineSpacing)
            .padding(.vertical, FontBuilder.title.verticalPadding)
            .foregroundColor(Color(cgColor: CGColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)))
        }
        
    }
}

























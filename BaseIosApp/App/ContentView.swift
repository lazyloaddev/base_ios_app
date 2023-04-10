import SwiftUI


struct ContentView: View {
    
    var body: some View {
        Image(.diary)
        Image("Back").resizable().frame(width: 300, height: 300)
    }
}
















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()//.previewLayout(PreviewLayout.sizeThatFits)
    }
}

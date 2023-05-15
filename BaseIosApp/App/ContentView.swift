import SwiftUI


struct ContentView: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 5, verticalSpacing: 10) {
            GridRow {
                Text("Lorem ipsum")
                    .background(.red)
                Text("dolor sit amet, consectetur adipiscing elit")
                    .background(.red)
                Text("Donec tempor, ante dictum scelerisque blandit")
                    .background(.red)
                Text("D")
                    .background(.red)
                    .gridColumnAlignment(.leading)
            }
            GridRow {
                Text("Lorem ipsum")
                    .background(.red)
                Text("dolor")
                    .background(.red)
                Text("Donec")
                    .background(.red)
                Text("e")
                    .background(.red)
            }
            GridRow {
                Text("Lorem ipsum amet")
                    .background(.red)
                    .gridCellColumns(2)
                Text("dolor sit amet, ")
                    .background(.red)
                Text("D")
                    .background(.red)
            }
            GridRow {
                Spacer()
                Spacer()
                Spacer()
                Text("D")
                    .frame(maxWidth: 100)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

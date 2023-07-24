import SwiftUI

struct NewTodoScreen: View {
    
    @State var title = ""
    @State var description = ""
    
    let onSave: (String, String) -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Заголовок", text: $title)
                TextField("Описание", text: $description, axis: .vertical)
                Button("Сохранить") {
                    onSave(title, description)
                }.buttonStyle(.borderedProminent)
            }
            .padding(20)
            .textFieldStyle(.roundedBorder)
        }
    }
}

struct NewTodoScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NewTodoScreen(onSave: { _, _ in })
        }
        
    }
}

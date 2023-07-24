import SwiftUI

struct TodoDetailScreen: View {
    let todo: Todo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(todo.title)
                    .font(.title)
                Text(todo.description)
                
                Text(todo.date, format: .dateTime).frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding(20)
        }
        .navigationTitle("Важно дело №\(todo.id)")
    }
}

struct TodoDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        let todo = Todo(
            id: 1,
            title: "Почистить картошку",
            description: "Почистить и нарезать картошку для приготовления пюре",
            date: .now
        )
        TodoDetailScreen(todo: todo)
    }
}

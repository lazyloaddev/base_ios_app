import SwiftUI

struct TodoListScreen: View {
    
    @State var todos: [Todo]
    @State var isNewTodoScreenPresented = false
    let date: Date
    
    init(date: Date) {
        self.date = date
        let tods = Self.generateFakeTodos(date: date)
        _todos = State(initialValue: tods)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(todos) { todo in
                    NavigationLink(value: MainFlowRoute.todoDetail(todo)) {
                        Text(todo.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }.padding(12)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isNewTodoScreenPresented = true
                } label: {
                    Image(systemName: "plus.square.fill")
                }
            }
        }
        .sheet(isPresented: $isNewTodoScreenPresented) {
            NewTodoScreen { title, description in
                newTodo(title: title, description: description)
                isNewTodoScreenPresented = false
            }
        }
    }
    
    private func newTodo(
        title: String,
        description: String
    ) {
        let lastId = todos.max { $0.id < $1.id }?.id ?? 0
        let newId = lastId + 1
        let todo = Todo(
            id: newId,
            title: title,
            description: description,
            date: date
        )
        todos.append(todo)
    }
    
    private static func generateFakeTodos(date: Date) -> [Todo] {
        (1...10).map { number in
            Todo(
                id: number,
                title: "Задача №\(number)",
                description: "Очень важная задача №\(number), которую нужно точно сделать",
                date: date
            )
        }
    }
}

struct TodoListScreen_Previews: PreviewProvider {
    static var previews: some View {
        TodoListScreen(date: .now)
    }
}

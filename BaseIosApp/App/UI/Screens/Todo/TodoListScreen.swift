import SwiftUI

struct TodoListScreen: View {
    
    @State var todos: [Todo]
    @State var isNewScreenPresented = false
    
    let date: Date
    
    init(date: Date) {
        self.date = date
        let todos = Self.generateFakeTodos(date: date)
        _todos = State(initialValue: todos)
    }
    
    var body: some View {
        ScrollView {
            VStack() {
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
                    isNewScreenPresented = true
                } label: {
                    Image(systemName: "plus.square.fill")
                }
            }
        }
        .sheet(isPresented: $isNewScreenPresented) {
            NewTodoScreen { title, description in
                isNewScreenPresented = false
                newTodo(title: title, description: description, date: date)
            }
        }
    }
    
    
    private func newTodo(
        title: String,
        description: String,
        date: Date
    ) {
        todos.sort { $0.id < $1.id }
        let lastId = todos.last?.id ?? 0
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
        (1...10)
            .map { number in
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
        NavigationStack {
            TodoListScreen(date: .now)
        }
    }
}

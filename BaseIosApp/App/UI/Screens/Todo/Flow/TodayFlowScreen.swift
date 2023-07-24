import SwiftUI

struct TodayFlowScreen: View {
    var body: some View {
        NavigationStack {
            TodoListScreen(date: .now)
                .navigationDestination(for: MainFlowRoute.self) { route in
                    switch route {
                    case .todoDetail(let todo):
                        TodoDetailScreen(todo: todo)
                    case .todoList(_):
                        fatalError()
                    }
                }
                .navigationTitle("Сегодня")
        }
    }
}

struct TodayFlowScreen_Previews: PreviewProvider {
    static var previews: some View {
        TodayFlowScreen()
    }
}

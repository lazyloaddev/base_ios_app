import SwiftUI

enum MainFlowRoute: Hashable {
    case todoDetail(Todo)
    case todoList(Date)
}

struct MainFlowScreen: View {
    
    var body: some View {
        TabView {
            TodayFlowScreen()
                .tabItem {
                    Image(systemName: "01.square.fill")
                    Text("Сегодня")
                }
            HistoryFlowScreen()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("История")
                }
        }
    }
    
}

struct MainFlowScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainFlowScreen()
    }
}

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
                    Image(systemName: getCurrentDayImageName())
                    Text("Сегодня")
                }
            HistoryFlowScreen()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("История")
                }
        }
    }
    
    
    func getCurrentDayImageName() -> String {
        let day = Calendar(identifier: .gregorian).component(.day, from: .now)
        let dayString = day < 10 ? "0\(day)" : "\(day)"
        return "\(dayString).square.fill"
    }
}

struct MainFlowScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainFlowScreen()
    }
}

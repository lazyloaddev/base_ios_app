import SwiftUI

struct DateListScreen: View {
    static let secondsInDay = Double(60 * 60 * 24)
    
    @State var dates: [Date] = (0..<7).map { number in
        Date(timeIntervalSince1970: Date.now.timeIntervalSince1970 - secondsInDay * Double(number))
    }
    
    var body: some View {
        ScrollView {
            VStack() {
                ForEach(dates, id: \.self) { date in
                    NavigationLink(value: MainFlowRoute.todoList(date)) {
                        Text(date, format: .dateTime)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Divider()
                }
            }.padding(12)
        }
        .navigationTitle("История")
    }
}

struct DateListScreen_Previews: PreviewProvider {
    static var previews: some View {
        DateListScreen()
    }
}

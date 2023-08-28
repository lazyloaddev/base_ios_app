import SwiftUI

struct DateListScreen: View {
    
    let dates = (0..<7).map { number in Date(timeIntervalSinceNow: Double(-86400 * number)) }
    
    var body: some View {
        ScrollView {
            VStack {
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

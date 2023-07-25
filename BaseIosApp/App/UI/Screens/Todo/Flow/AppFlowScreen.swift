import SwiftUI

enum AppFlowState {
    case auth
    case main
}

struct AppFlowScreen: View {
    
    @State var appFlowState: AppFlowState = .auth
    
    var body: some View {
        switch appFlowState {
        case .auth:
            AuthFlowScreen {
                appFlowState = .main
            }
        case .main:
            MainFlowScreen()
        }
    }
    
}

import SwiftUI

struct LoginScreen: View {
    
    @State var login = ""
    @State var password = ""
    
    let onLogin: () -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Логин", text: $login)
                TextField("Пароль", text: $password)
                Button("Войти", action: onLogin).buttonStyle(.borderedProminent)
                NavigationLink("Регистрация", value: AuthFlowRoute.register)
            }.padding(20)
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("Авторизация")
    }
    
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen(onLogin: {})
    }
}

import SwiftUI

struct RegisterScreen: View {
    
    @State var login = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    let onRegister: () -> Void
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Логин", text: $login)
                TextField("Email", text: $email)
                TextField("Пароль", text: $password)
                TextField("Подтверждение пароля", text: $confirmPassword)
                Button("Войти", action: onRegister)
                    .buttonStyle(.borderedProminent)
            }.padding(20)
        }
        .textFieldStyle(.roundedBorder)
        .navigationTitle("Регистрация")
    }
    
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen(onRegister: {})
    }
}

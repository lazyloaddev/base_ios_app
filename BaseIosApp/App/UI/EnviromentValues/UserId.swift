import SwiftUI

private struct UserId: EnvironmentKey {
    typealias Value = Int?

    static let defaultValue: Int? = nil
}


extension EnvironmentValues {
  var userId: Int? {
    get { self[UserId.self] }
    set { self[UserId.self] = newValue }
  }
}

extension View {
  func userId(_ id: Int?) -> some View {
    environment(\.userId, id)
  }
}

import Foundation

struct Todo: Hashable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let date: Date
}

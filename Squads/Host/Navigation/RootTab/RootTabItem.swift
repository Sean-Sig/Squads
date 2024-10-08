import Foundation

enum RootTabItem: Int {
    case squadGroups
    case games
    case create
    case messages
    case profile
}

extension RootTabItem: Identifiable {
    var id: Int {
        rawValue
    }
}

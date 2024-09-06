import Foundation

enum RootTabItem: Int {
    case squads
    case explore
    case create
    case messages
    case profile
}

extension RootTabItem: Identifiable {
    var id: Int {
        rawValue
    }
}

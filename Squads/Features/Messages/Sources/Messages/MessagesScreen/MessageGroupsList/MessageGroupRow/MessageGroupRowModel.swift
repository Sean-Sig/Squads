import Foundation

struct MessageGroupRowModel: Equatable, Decodable {
    var id: String
    var squadName: String
    var unreadCount: String
}

#if DEBUG
extension MessageGroupRowModel {
    static let messageGroupMock = MessageGroupRowModel(
        id: "avalon-1",
        squadName: "Avalon Hoopers",
        unreadCount: "3"
    )
}
#endif

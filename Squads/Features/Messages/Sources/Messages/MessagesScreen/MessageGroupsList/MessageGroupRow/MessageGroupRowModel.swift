import Foundation

struct MessageGroupRowModel: Equatable, Decodable {
    var id: String
    var squadName: String
    var mostRecentMessage: String
    var messageDate: String
}

#if DEBUG
extension MessageGroupRowModel {
    static let messageGroupMock = MessageGroupRowModel(
        id: "avalon-1",
        squadName: "Avalon Hoopers",
        mostRecentMessage: "Hey, the party is about to start!",
        messageDate: "10/28/2024"
    )
    static let messageGroup2Mock = MessageGroupRowModel(
        id: "avalon-2",
        squadName: "Avalon Hoopers",
        mostRecentMessage: "Hey, the party is about to start!",
        messageDate: "10/28/2024"
    )
}
#endif

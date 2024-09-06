import Foundation

struct MessageGroupsListModel: Equatable, Decodable {
    var messageGroups: [MessageGroupRowModel]
}

#if DEBUG
extension MessageGroupsListModel {
    static let messageGroupsMock = MessageGroupsListModel(
        messageGroups: [
            .messageGroupMock
        ]
    )
}
#endif

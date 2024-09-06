import Foundation

struct SquadGroupsListModel: Equatable, Decodable {
    var squadGroups: [SquadGroupRowModel]
}

#if DEBUG
extension SquadGroupsListModel {
    static let squadGroupsMock = SquadGroupsListModel(
        squadGroups: [
            .squadGroupMock
        ]
    )
}
#endif

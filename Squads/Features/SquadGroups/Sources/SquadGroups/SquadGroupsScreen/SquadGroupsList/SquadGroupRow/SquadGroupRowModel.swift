import Foundation

struct SquadGroupRowModel: Equatable, Decodable {
    var id: String
    var squadName: String
    var squadType: String
    var squadMemberCount: String
}

#if DEBUG
extension SquadGroupRowModel {
    static let squadGroupMock = SquadGroupRowModel(
        id: "avalon-1",
        squadName: "Avalon Hoopers",
        squadType: "Basketball",
        squadMemberCount: "30"
    )
}
#endif

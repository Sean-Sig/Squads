import Foundation

struct SquadPlayerRowModel: Equatable, Decodable {
    var id: String {playerId}
    var playerId: String
    var firstName: String
    var lastName: String
}

#if DEBUG
extension SquadPlayerRowModel {
    static let squadPlayerMock = SquadPlayerRowModel(
        playerId: "player-id_1",
        firstName: "First",
        lastName: "Last"
    )
}
#endif

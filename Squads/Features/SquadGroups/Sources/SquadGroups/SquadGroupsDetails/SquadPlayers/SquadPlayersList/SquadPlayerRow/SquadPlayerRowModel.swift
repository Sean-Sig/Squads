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
        playerId: "player-id-1",
        firstName: "First",
        lastName: "Last"
    )
    static let squadPlayer2Mock = SquadPlayerRowModel(
        playerId: "player-id-2",
        firstName: "First",
        lastName: "Last"
    )
}
#endif

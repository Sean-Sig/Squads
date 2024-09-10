import Foundation

struct SquadPlayersListModel: Equatable, Decodable {
    var squadPlayers: [SquadPlayerRowModel]
}

#if DEBUG
extension SquadPlayersListModel {
    static let squadPlayersMock = SquadPlayersListModel(
        squadPlayers: [
            .squadPlayerMock,
            .squadPlayer2Mock
        ]
    )
}
#endif

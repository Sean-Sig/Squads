import Foundation

struct SquadPlayersModel: Equatable {
    var squadPlayerListModel: SquadPlayersListModel
}

#if DEBUG
extension SquadPlayersModel {
    static let squadPlayersMock = SquadPlayersModel(
        squadPlayerListModel: SquadPlayersListModel(
            squadPlayers: [.squadPlayerMock]
        )
    )
}
#endif

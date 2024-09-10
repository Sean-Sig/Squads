import Foundation

struct GamesListModel: Equatable, Decodable {
    var squadName: String
    var gameItems: [GameItemModel]
}

#if DEBUG
extension GamesListModel {
    static let gamesListMock = GamesListModel(
        squadName: "Avalon Hoopers",
        gameItems: [
            .gameItemMock
        ]
    )
}
#endif

import Foundation

struct GamesRowModel: Equatable, Decodable {
    var gameRows: [GamesListModel]
}

#if DEBUG
extension GamesRowModel {
    static let gamesRowMock = GamesRowModel(
        gameRows: [
            .gamesListMock,
            .gamesListMock
        ]
    )
}
#endif

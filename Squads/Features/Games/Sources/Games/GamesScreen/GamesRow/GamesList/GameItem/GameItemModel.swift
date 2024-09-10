import Foundation

struct GameItemModel: Equatable, Decodable {
    var id: String
    var squadType: String
    var gameTime: String
    var gameDate: String
}

#if DEBUG
extension GameItemModel {
    static let gameItemMock = GameItemModel(
        id: "game-1",
        squadType: "Basketball",
        gameTime: "9:00PM",
        gameDate: "Thurs, Sep 12th 24"
    )
}
#endif

import SwiftUI

struct GameItemView: View {
    var gameItemModel: GameItemModel

    var body: some View {
        HStack {
            Text(gameItemModel.squadType)
            Spacer()
            Text(gameItemModel.gameDate)
            Text(gameItemModel.gameTime)
        }
    }
}

#if DEBUG
#Preview {
    GameItemView(gameItemModel: .gameItemMock)
}
#endif

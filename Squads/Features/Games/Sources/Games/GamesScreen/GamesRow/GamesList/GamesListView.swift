import SwiftUI

struct GamesListView: View {
    var gamesListModel: GamesListModel

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(gamesListModel.squadName)
                .font(.headline)
            ScrollView(.horizontal) {
                ForEach(gamesListModel.gameItems, id: \.id) { row in
                    GameItemView(gameItemModel: row)
                }
            }
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    GamesListView(gamesListModel: .gamesListMock)
}
#endif

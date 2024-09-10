import SwiftUI

struct GamesRowView: View {
    var gamesRowModel: GamesRowModel

    var body: some View {
        ScrollView {
            ForEach(0..<gamesRowModel.gameRows.count, id: \.self) { outerIndex in
                GamesListView(gamesListModel: gamesRowModel.gameRows[outerIndex])
            }
        }
    }
}

#if DEBUG
#Preview {
    GamesRowView(gamesRowModel: .gamesRowMock)
}
#endif

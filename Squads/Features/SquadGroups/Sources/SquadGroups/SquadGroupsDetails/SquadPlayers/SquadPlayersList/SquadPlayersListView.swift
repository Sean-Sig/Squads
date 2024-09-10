import SwiftUI

struct SquadPlayersListView: View {
    var squadPlayersListModel: SquadPlayersListModel

    var body: some View {
        List {
            ForEach(squadPlayersListModel.squadPlayers, id: \.id) { row in
                SquadPlayerRowView(
                    squadPlayerRowModel: row,
                    isLast: row.id == squadPlayersListModel.squadPlayers.last?.id
                )
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
    }
}

#if DEBUG
#Preview {
    SquadPlayersListView(squadPlayersListModel: .squadPlayersMock)
}
#endif

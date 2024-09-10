import SwiftUI

struct SquadPlayersListView: View {
    var squadPlayersListModel: SquadPlayersListModel

    var body: some View {
        List {
            ForEach(squadPlayersListModel.squadPlayers, id: \.id) { row in
                SquadPlayerRowView(squadPlayerRowModel: row)
                .listRowInsets(EdgeInsets())
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

import SwiftUI

struct SquadGroupsListView: View {
    var squadGroupsListModel: SquadGroupsListModel

    var body: some View {
        List {
            ForEach(squadGroupsListModel.squadGroups, id: \.id) { row in
                SquadGroupRowView(
                    squadGroupRowModel: row,
                    isLast: row.id == squadGroupsListModel.squadGroups.last?.id
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
    SquadGroupsListView(squadGroupsListModel: .squadGroupsMock)
}
#endif

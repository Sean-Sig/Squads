import SwiftUI

struct SquadGroupsListView: View {
    var squadGroupsListModel: SquadGroupsListModel

    var body: some View {
        List {
            ForEach(squadGroupsListModel.squadGroups, id: \.id) { row in
                SquadGroupRowView(squadGroupRowModel: row)
                .listRowInsets(EdgeInsets())
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

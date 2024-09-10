import SwiftUI

struct MessageGroupsListView: View {
    var messageGroupsListModel: MessageGroupsListModel

    var body: some View {
        List {
            ForEach(messageGroupsListModel.messageGroups, id: \.id) { row in
                MessageGroupRowView(
                    messageGroupRowModel: row,
                    isLast: row.id == messageGroupsListModel.messageGroups.last?.id
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
    MessageGroupsListView(messageGroupsListModel: .messageGroupsMock)
}
#endif

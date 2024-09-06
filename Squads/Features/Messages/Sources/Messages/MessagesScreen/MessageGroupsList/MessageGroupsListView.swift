import SwiftUI

struct MessageGroupsListView: View {
    var messageGroupsListModel: MessageGroupsListModel

    var body: some View {
        List {
            ForEach(messageGroupsListModel.messageGroups, id: \.id) { row in
                MessageGroupRowView(messageGroupRowModel: row)
                .listRowInsets(EdgeInsets())
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

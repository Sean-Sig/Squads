import SwiftUI

struct MessageGroupRowView: View {
    var messageGroupRowModel: MessageGroupRowModel

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                Text(messageGroupRowModel.squadName)
                Spacer()
                Text(messageGroupRowModel.unreadCount)
                    .foregroundStyle(.red)
            }
        }
        .padding(8)
    }
}

#if DEBUG
#Preview {
    MessageGroupRowView(messageGroupRowModel: .messageGroupMock)
}
#endif

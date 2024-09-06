import SwiftUI

struct MessageGroupRowView: View {
    var messageGroupRowModel: MessageGroupRowModel

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 0) {
                Text(messageGroupRowModel.squadName)
                Spacer()
                Text(messageGroupRowModel.messageDate)
            }
            Text(messageGroupRowModel.mostRecentMessage)
        }
        .padding(8)
    }
}

#if DEBUG
#Preview {
    MessageGroupRowView(messageGroupRowModel: .messageGroupMock)
}
#endif

import SwiftUI

struct MessageGroupRowView: View {
    var messageGroupRowModel: MessageGroupRowModel
    @State private var isActive = false
    var isLast: Bool = false

    var body: some View {
        VStack(spacing: 0) {
            Button {
                isActive.toggle()
            } label: {
                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 0) {
                        Text(messageGroupRowModel.squadName)
                        Spacer()
                        Text(messageGroupRowModel.messageDate)
                    }
                    Text(messageGroupRowModel.mostRecentMessage)
                }
            }
            .padding()
            if !isLast {
                Divider()
                    .padding(.leading)
            }
        }
    }
}

#if DEBUG
#Preview {
    MessageGroupRowView(messageGroupRowModel: .messageGroupMock)
}
#endif

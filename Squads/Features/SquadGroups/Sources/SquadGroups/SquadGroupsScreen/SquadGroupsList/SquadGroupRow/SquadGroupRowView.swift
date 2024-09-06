import SwiftUI

struct SquadGroupRowView: View {
    var squadGroupRowModel: SquadGroupRowModel

    var body: some View {
        VStack(spacing: 24) {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text(squadGroupRowModel.squadName)
                    Text(squadGroupRowModel.squadType)
                }
                Spacer()
                Text(squadGroupRowModel.squadMemberCount)
                Image(systemName: "person.2")
            }
        }
        .padding(8)
    }
}

#if DEBUG
#Preview {
    SquadGroupRowView(squadGroupRowModel: .squadGroupMock)
}
#endif

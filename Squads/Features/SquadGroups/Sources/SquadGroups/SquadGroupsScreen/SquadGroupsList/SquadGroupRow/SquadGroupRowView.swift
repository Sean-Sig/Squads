import SwiftUI

struct SquadGroupRowView: View {
    var squadGroupRowModel: SquadGroupRowModel
    @State private var isActive = false

    var body: some View {
        Button {
            isActive.toggle()
        } label: {
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
        .sheet(isPresented: $isActive) {
            SquadGroupsDetailsView(viewModel: SquadGroupDetailsScreenViewModel(squadGroupRowModel.squadId))
        }
    }
}

#if DEBUG
#Preview {
    SquadGroupRowView(squadGroupRowModel: .squadGroupMock)
}
#endif

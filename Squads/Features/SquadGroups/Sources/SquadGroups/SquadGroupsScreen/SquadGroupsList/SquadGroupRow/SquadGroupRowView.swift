import SwiftUI

struct SquadGroupRowView: View {
    var squadGroupRowModel: SquadGroupRowModel
    @State private var isActive = false
    var isLast: Bool = false

    var body: some View {
        VStack(spacing: 0) {
            Button {
                isActive.toggle()
            } label: {
                VStack(spacing: 24) {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(squadGroupRowModel.squadName)
                                .font(.headline)
                            Text(squadGroupRowModel.squadType)
                        }
                        Spacer()
                        Text(squadGroupRowModel.squadMemberCount)
                        Image(systemName: "person.2")
                    }
                }
            }
            .padding()
            if !isLast {
                Divider()
                    .padding(.leading)
            }
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

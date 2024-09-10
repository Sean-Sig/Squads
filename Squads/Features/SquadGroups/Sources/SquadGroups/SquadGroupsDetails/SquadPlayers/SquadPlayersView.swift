import SwiftUI

struct SquadPlayersView: View {
    var squadPlayersModel: SquadPlayersModel

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Members(20)")
                    .font(.headline)
                Spacer()
                Image(systemName: "plus")
            }
            .padding()
            SquadPlayersListView(squadPlayersListModel: squadPlayersModel.squadPlayerListModel)
        }
    }
}

#if DEBUG
#Preview {
    SquadPlayersView(squadPlayersModel: .squadPlayersMock)
}
#endif

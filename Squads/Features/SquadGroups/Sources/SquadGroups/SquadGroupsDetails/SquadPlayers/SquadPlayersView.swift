import SwiftUI

struct SquadPlayersView: View {
    var squadPlayersModel: SquadPlayersModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("Members")
                .font(.headline)
            SquadPlayersListView(squadPlayersListModel: squadPlayersModel.squadPlayerListModel)
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    SquadPlayersView(squadPlayersModel: .squadPlayersMock)
}
#endif

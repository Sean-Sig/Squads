import SwiftUI

struct SquadGroupsDetailsView: View {
    @StateObject var viewModel = SquadGroupDetailsScreenViewModel("")
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                if viewModel.model.isLoading {
                    Text("loading...")
                } else if viewModel.model.error != nil {
                    Text("Error")
                } else {
                    VStack(spacing: 0) {
                        SquadLocationView()
                        Divider()
                            .padding(.leading)
                        SquadDateTimeView()
                        SquadPlayersView(squadPlayersModel: viewModel.model.value.squadPlayersModel)
                    }
                }
            }
            .onAppear {
                Task {
                    await viewModel.send(action: .fetch)
                }
            }
            .navigationBarTitle("Squad Details", displayMode: .inline)
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        }
    }
}

#if DEBUG
#Preview {
    SquadGroupsDetailsView()
}
#endif

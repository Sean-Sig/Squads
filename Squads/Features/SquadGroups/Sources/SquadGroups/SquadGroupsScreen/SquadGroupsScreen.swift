import SwiftUI

public struct SquadGroupsScreen: View {
    @StateObject var viewModel = SquadGroupsScreenViewModel()

    public init() {}

    public var body: some View {
        VStack(spacing: 0) {
            if viewModel.model.isLoading {
                Text("loading...")
            } else if viewModel.model.error != nil {
                Text("Error")
            } else {
                SquadGroupsListView(squadGroupsListModel: viewModel.model.value)
            }
        }
        .onAppear {
            Task {
                await viewModel.send(action: .fetch)
            }
        }
        .refreshable {
            await viewModel.send(action: .refresh)
        }
        .navigationTitle("Squads")
    }
}

#if DEBUG
#Preview {
    SquadGroupsScreen()
}
#endif

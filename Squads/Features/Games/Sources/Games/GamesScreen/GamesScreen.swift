import SwiftUI

public struct GamesScreen: View {
    @StateObject var viewModel = GamesScreenViewModel()

    public init() {}

    public var body: some View {
        VStack(spacing: 0) {
            if viewModel.model.isLoading {
                Text("loading...")
                    .shimmer()
            } else if viewModel.model.error != nil {
                Text("Error")
            } else {
                GamesRowView(gamesRowModel: viewModel.model.value)
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
        .navigationTitle("Upcoming")
    }
}

#if DEBUG
#Preview {
    GamesScreen()
}
#endif

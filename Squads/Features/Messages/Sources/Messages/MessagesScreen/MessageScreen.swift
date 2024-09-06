import SwiftUI

public struct MessageScreen: View {
    @StateObject var viewModel = MessageScreenViewModel()

    public init() {}

    public var body: some View {
        VStack(spacing: 0) {
            if viewModel.model.isLoading {
                Text("loading...")
            } else if viewModel.model.error != nil {
                Text("Error")
            } else {
                MessageGroupsListView(messageGroupsListModel: viewModel.model.value)
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
        .navigationTitle("Messages")
    }
}

#if DEBUG
#Preview {
    MessageScreen()
}
#endif

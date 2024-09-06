import SwiftUI

public struct ProfileScreen: View {
    @StateObject var viewModel = ProfileScreenViewModel()

    public init() {}

    public var body: some View {
        VStack(spacing: 0) {
            if viewModel.model.isLoading {
                Text("loading...")
            } else if viewModel.model.error != nil {
                Text("Error")
            } else {
                ProfileDetailsView(profileDetailsViewModel: viewModel.model.value)
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
        .navigationTitle("Profile & Settings")
    }
}

#if DEBUG
#Preview {
    ProfileScreen()
}
#endif

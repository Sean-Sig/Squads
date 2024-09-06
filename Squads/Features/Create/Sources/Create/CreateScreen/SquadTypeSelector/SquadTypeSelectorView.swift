import SwiftUI

struct SquadTypeSelectorView: View {
    @StateObject var viewModel = SquadTypeSelectorViewModel()

    var body: some View {
        VStack(spacing: 0) {
            if viewModel.model.isLoading {
                Text("loading...")
            } else if viewModel.model.error != nil {
                Text("Error")
            } else {
                SquadTypeSelectorListView(squadTypeSelectorRowModel: viewModel.model.value)
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
    }
}

#if DEBUG
#Preview {
    SquadTypeSelectorView()
}
#endif

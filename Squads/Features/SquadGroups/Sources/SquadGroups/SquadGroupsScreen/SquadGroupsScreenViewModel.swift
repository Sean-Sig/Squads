import Foundation
import CommonFoundation

enum SquadGroupsScreenAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class SquadGroupsScreenViewModel: ObservableObject {
    @Published private(set) var model = AsyncModel(
        value: SquadGroupsListModel(squadGroups: []), isLoading: true
    )

    func send(action: SquadGroupsScreenAction) async {
        switch action {
        case .fetch, .refresh:
            await fetchSquads()
        case .setError(let error):
            model.error = error
        }
    }

    @MainActor
    private func fetchSquads() async {
        do {
            try? await Task.sleep(nanoseconds: 7_500_000_000)
            self.model = AsyncModel(value: .squadGroupsMock)
        }
    }
}

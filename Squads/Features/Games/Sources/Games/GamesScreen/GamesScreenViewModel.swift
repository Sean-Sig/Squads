import Foundation
import CommonFoundation

enum GamesScreenAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class GamesScreenViewModel: ObservableObject {
    @Published private(set) var model = AsyncModel(
        value: GamesRowModel(gameRows: []), isLoading: true
    )

    func send(action: GamesScreenAction) async {
        switch action {
        case .fetch, .refresh:
            await fetchGames()
        case .setError(let error):
            model.error = error
        }
    }

    @MainActor
    private func fetchGames() async {
        do {
            try? await Task.sleep(nanoseconds: 9_500_000)
            self.model = AsyncModel(value: .gamesRowMock)
        }
    }
}

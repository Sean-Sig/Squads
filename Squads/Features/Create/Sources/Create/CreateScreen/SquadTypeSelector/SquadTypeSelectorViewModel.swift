import Foundation
import CommonFoundation

enum SquadTypeSelectorAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class SquadTypeSelectorViewModel: ObservableObject {
    @Published private(set) var model = AsyncModel(
        value: SquadTypeSelectorListModel(squadTypes: []), isLoading: true
    )

    func send(action: SquadTypeSelectorAction) async {
        switch action {
        case .fetch, .refresh:
            await fetchSquadTypes()
        case .setError(let error):
            model.error = error
        }
    }

    @MainActor
    private func fetchSquadTypes() async {
        do {
            try? await Task.sleep(nanoseconds: 950_000_000)
            self.model = AsyncModel(value: .squadTypesMock)
        }
    }
}

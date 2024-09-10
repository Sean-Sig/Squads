import Foundation
import CommonFoundation

enum ProfileScreenAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class ProfileScreenViewModel: ObservableObject {
    @Published private(set) var model = AsyncModel(
        value: ProfileDetailsViewModel(
            id: "",
            name: "",
            squadCount: "",
            location: "",
            memberSince: "",
            gamesPlayed: ""
        ), isLoading: true
    )

    func send(action: ProfileScreenAction) async {
        switch action {
        case .fetch, .refresh:
            await fetchProfile()
        case .setError(let error):
            model.error = error
        }
    }

    @MainActor
    private func fetchProfile() async {
        do {
            try? await Task.sleep(nanoseconds: 950_000_000)
            self.model = AsyncModel(value: .profileDetailsMock)
        }
    }
}

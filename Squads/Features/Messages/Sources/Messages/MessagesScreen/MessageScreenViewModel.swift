import Foundation
import CommonFoundation

enum MessageGroupsScreenAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class MessageScreenViewModel: ObservableObject {
    @Published private(set) var model = AsyncModel(
        value: MessageGroupsListModel(messageGroups: []), isLoading: true
    )

    func send(action: MessageGroupsScreenAction) async {
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
            self.model = AsyncModel(value: .messageGroupsMock)
        }
    }
}

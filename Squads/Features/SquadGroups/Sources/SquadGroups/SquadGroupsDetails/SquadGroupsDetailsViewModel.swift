import Foundation
import CommonFoundation

enum SquadGroupDetailsScreenAction: AsyncActions {
    case fetch
    case refresh
    case setError(EquatableError?)
}

final class SquadGroupDetailsScreenViewModel: ObservableObject {
    private var squadId: String = ""

    @Published private(set) var model = AsyncModel(
        value: SquadGroupsDetailsModel(
            squadPlayersModel:
                SquadPlayersModel(squadPlayerListModel: SquadPlayersListModel(squadPlayers: []))
        ), isLoading: true
    )

    init(_ squadId: String) {
        self.squadId = squadId
    }

    func send(action: SquadGroupDetailsScreenAction) async {
        switch action {
        case .fetch, .refresh:
            await fetchSquadDetails(squadId: squadId)
        case .setError(let error):
            model.error = error
        }
    }

    @MainActor
    private func fetchSquadDetails(squadId: String) async {
        do {
            try? await Task.sleep(nanoseconds: 9_500_000)
            self.model = AsyncModel(value: SquadGroupsDetailsModel(
                squadPlayersModel: SquadPlayersModel(squadPlayerListModel: .squadPlayersMock))
            )
        }
    }
}

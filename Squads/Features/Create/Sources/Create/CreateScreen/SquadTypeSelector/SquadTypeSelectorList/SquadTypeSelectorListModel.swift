import Foundation

struct SquadTypeSelectorListModel: Equatable, Decodable {
    var squadTypes: [SquadTypeSelectorRowModel]
}

#if DEBUG
extension SquadTypeSelectorListModel {
    static let squadTypesMock = SquadTypeSelectorListModel(
        squadTypes: [
            .squadTypeMock
        ]
    )
}
#endif

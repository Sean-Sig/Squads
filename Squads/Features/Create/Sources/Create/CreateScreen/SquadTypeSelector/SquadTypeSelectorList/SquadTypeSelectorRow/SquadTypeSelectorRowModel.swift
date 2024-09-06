import Foundation

struct SquadTypeSelectorRowModel: Equatable, Decodable {
    var id: String
    var squadType: String
}

#if DEBUG
extension SquadTypeSelectorRowModel {
    static let squadTypeMock = SquadTypeSelectorRowModel(
        id: "squad-type-1",
        squadType: "Basketball"
    )
}
#endif

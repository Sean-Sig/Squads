import SwiftUI

struct SquadTypeSelectorListView: View {
    var squadTypeSelectorRowModel: SquadTypeSelectorListModel

    var body: some View {
        List {
            ForEach(squadTypeSelectorRowModel.squadTypes, id: \.id) { row in
                SquadTypeSelectorRowView(squadTypeSelectorRowModel: row)
                .listRowInsets(EdgeInsets())
            }
        }
        .listStyle(.plain)
    }
}

#if DEBUG
#Preview {
    SquadTypeSelectorListView(squadTypeSelectorRowModel: .squadTypesMock)
}
#endif

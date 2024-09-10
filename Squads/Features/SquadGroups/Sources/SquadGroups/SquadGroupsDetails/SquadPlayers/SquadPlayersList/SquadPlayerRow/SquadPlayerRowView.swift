import SwiftUI

struct SquadPlayerRowView: View {
    var squadPlayerRowModel: SquadPlayerRowModel

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: "person.circle")
                .font(.title)
            Text("\(squadPlayerRowModel.firstName) \(squadPlayerRowModel.lastName)")
            Spacer()
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    SquadPlayerRowView(squadPlayerRowModel: .squadPlayerMock)
}
#endif

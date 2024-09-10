import SwiftUI

struct SquadPlayerRowView: View {
    var squadPlayerRowModel: SquadPlayerRowModel
    var isLast: Bool = false

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 6) {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40)
                Text("\(squadPlayerRowModel.firstName) \(squadPlayerRowModel.lastName)")
                Spacer()
            }
            .padding()
            if !isLast {
                Divider()
                    .padding(.leading)
            }
        }
    }
}

#if DEBUG
#Preview {
    SquadPlayerRowView(squadPlayerRowModel: .squadPlayerMock)
}
#endif

import SwiftUI

struct SquadTypeSelectorRowView: View {
    var squadTypeSelectorRowModel: SquadTypeSelectorRowModel
    var isSelected = false

    var body: some View {
        HStack(spacing: 8) {
            Text(squadTypeSelectorRowModel.squadType)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark")
                    .foregroundStyle(.green)
            }
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    SquadTypeSelectorRowView(squadTypeSelectorRowModel: .squadTypeMock)
}
#endif

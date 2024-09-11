import SwiftUI

struct SquadLocationView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Avalon Hoopers")
                    .font(.headline)
                Spacer()
            }
            .padding()
            RoundedRectangle(cornerRadius: 8)
                .fill(.tertiary)
                .frame(height: 200)
            HStack {
                Image(systemName: "pin")
                VStack(alignment: .leading) {
                    Text("1223 Sandhook Drive")
                    Text("Winter Garden, FL 34787")
                }
                Spacer()
            }
            .padding()
        }
    }
}

#if DEBUG
#Preview {
    SquadLocationView()
}
#endif

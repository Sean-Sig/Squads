import SwiftUI

struct SquadDateTimeView: View {
    var body: some View {
        HStack {
            Image(systemName: "calendar")
            VStack(alignment: .leading) {
                Text("9:00PM")
                Text("Thursdays")
            }
            Spacer()
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    SquadDateTimeView()
}
#endif

import SwiftUI
import CommonFoundation

public struct CreateScreen: View {

    public init() {}

    public var body: some View {
        VStack(spacing: 16) {
            Text("Name Your Squad")

            NavigationLink {
                SquadTypeSelectorView()
            } label: {
                Text("Squad type")
            }

            Text("Create My Squad!")
        }
        .navigationTitle("Create")
    }
}

#if DEBUG
#Preview {
    CreateScreen()
}
#endif

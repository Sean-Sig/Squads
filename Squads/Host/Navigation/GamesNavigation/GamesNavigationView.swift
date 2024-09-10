import SwiftUI
import Games

struct GamesNavigationView: View {
    var body: some View {
        NavigationView {
            GamesScreen()
        }
    }
}

#if DEBUG
#Preview {
    GamesNavigationView()
}
#endif

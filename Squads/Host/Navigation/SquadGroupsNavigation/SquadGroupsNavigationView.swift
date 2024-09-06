import SwiftUI
import SquadGroups

struct SquadGroupsNavigationView: View {
    var body: some View {
        NavigationView {
            SquadGroupsScreen()
        }
    }
}

#if DEBUG
#Preview {
    SquadGroupsNavigationView()
}
#endif

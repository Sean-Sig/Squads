import SwiftUI
import Profile

struct ProfileNavigationView: View {
    var body: some View {
        NavigationView {
            ProfileScreen()
        }
    }
}

#if DEBUG
#Preview {
    ProfileNavigationView()
}
#endif

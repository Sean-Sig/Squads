import SwiftUI
import Create

struct CreateNavigationView: View {
    var body: some View {
        NavigationView {
            CreateScreen()
        }
    }
}

#if DEBUG
#Preview {
    CreateNavigationView()
}
#endif

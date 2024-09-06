import SwiftUI
import Messages

struct MessagesNavigationView: View {
    var body: some View {
        NavigationView {
            MessageScreen()
        }
    }
}

#if DEBUG
#Preview {
    MessagesNavigationView()
}
#endif

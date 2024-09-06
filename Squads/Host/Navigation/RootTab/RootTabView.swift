import SwiftUI

struct RootTabView: View {

    let rootTabItems: [RootTabItem] = [.squads, .explore, .create, .messages, .profile]

    var body: some View {
        TabView {
            ForEach(rootTabItems, id: \.self) { tabItem in
                switch tabItem {
                case .squads:
                    squadsRootTabView
                        .tag(tabItem)
                case .explore:
                    exploreRootTabView
                        .tag(tabItem)
                case .create:
                    createRootTabView
                        .tag(tabItem)
                case .messages:
                    messagesRootTabView
                        .tag(tabItem)
                case .profile:
                    profileRootTabView
                        .tag(tabItem)
                }
            }
        }
    }
}

private extension RootTabView {
    var squadsRootTabView: some View {
        SquadsNavigationView()
            .tabItem {
                Label {
                    Text("Squads")
                } icon: {
                    Image(systemName: "person.3")
                }
            }
    }
    var exploreRootTabView: some View {
        ExploreNavigationView()
            .tabItem {
                Label {
                    Text("Explore")
                } icon: {
                    Image(systemName: "globe")
                }
            }
    }
    var createRootTabView: some View {
        CreateNavigationView()
            .tabItem {
                Label {
                    Text("Create")
                } icon: {
                    Image(systemName: "plus")
                }
            }
    }
    var messagesRootTabView: some View {
        MessagesNavigationView()
            .tabItem {
                Label {
                    Text("Messages")
                } icon: {
                    Image(systemName: "message")
                }
            }
    }
    var profileRootTabView: some View {
        ProfileNavigationView()
            .tabItem {
                Label {
                    Text("Profile")
                } icon: {
                    Image(systemName: "person")
                }
            }
    }
}

#if DEBUG
#Preview {
    RootTabView()
}
#endif

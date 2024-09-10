import SwiftUI

struct RootTabView: View {

    let rootTabItems: [RootTabItem] = [.squadGroups, .games, .create, .messages, .profile]

    var body: some View {
        TabView {
            ForEach(rootTabItems, id: \.self) { tabItem in
                switch tabItem {
                case .squadGroups:
                    squadsRootTabView
                        .tag(tabItem)
                case .games:
                    gamesRootTabView
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
        SquadGroupsNavigationView()
            .tabItem {
                Label {
                    Text("Squads")
                } icon: {
                    Image(systemName: "person.3")
                }
            }
    }
    var gamesRootTabView: some View {
        GamesNavigationView()
            .tabItem {
                Label {
                    Text("Upcoming")
                } icon: {
                    Image(systemName: "calendar")
                }
            }
    }
    var createRootTabView: some View {
        CreateNavigationView()
            .tabItem {
                Label {
                    Text("Create")
                } icon: {
                    Image(systemName: "plus.circle")
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

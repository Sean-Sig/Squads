import SwiftUI

struct ProfileDetailsView: View {
    var profileDetailsViewModel: ProfileDetailsViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(profileDetailsViewModel.name)
            Text(profileDetailsViewModel.squadCount)
            Text(profileDetailsViewModel.location)
            Text(profileDetailsViewModel.memberSince)
            Text(profileDetailsViewModel.gamesPlayed)
        }
    }
}

#if DEBUG
#Preview {
    ProfileDetailsView(profileDetailsViewModel: .profileDetailsMock)
}
#endif

import Foundation

struct ProfileDetailsViewModel: Equatable, Decodable {
    var id: String
    var name: String
    var squadCount: String
    var location: String
    var memberSince: String
    var gamesPlayed: String
}

#if DEBUG
extension ProfileDetailsViewModel {
    static let profileDetailsMock = ProfileDetailsViewModel(
        id: "avalon-1",
        name: "Sean",
        squadCount: "2",
        location: "Orlando, FL",
        memberSince: "09/06/2024",
        gamesPlayed: "30"
    )
}
#endif

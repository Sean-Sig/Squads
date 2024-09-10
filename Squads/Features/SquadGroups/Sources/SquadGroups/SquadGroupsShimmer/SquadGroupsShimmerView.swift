import SwiftUI

struct SquadGroupsShimmerView: View {
    var body: some View {
        ScrollView {
            squadRowShimmerView
        }
    }

    @ViewBuilder var squadRowShimmerView: some View {
        VStack(spacing: 24) {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Rectangle()
                        .frame(width: 130, height: 18)
                        .font(.headline)
                        .shimmer()
                    Rectangle()
                        .frame(width: 80, height: 18)
                        .shimmer()
                }
                Spacer()
                Rectangle()
                    .frame(width: 50, height: 18)
                    .shimmer()
            }
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    SquadGroupsShimmerView()
}
#endif

import SwiftUI

struct SquadGroupDetailsShimmerView: View {
    var body: some View {
        VStack(spacing: 0) {
            squadLocationShimmerView
            squadDateTimeShimmerView
            squadMembersShimmerView
            Spacer()
        }
    }
    @ViewBuilder var squadLocationShimmerView: some View {
        VStack(spacing: 0) {
            HStack {
                Rectangle()
                    .frame(width: 130, height: 18)
                    .shimmer()
                Spacer()
            }
            .padding()
            RoundedRectangle(cornerRadius: 8)
                .fill(.tertiary)
                .frame(height: 200)
                .shimmer()
            HStack {
                Image(systemName: "pin")
                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: 100, height: 18)
                        .shimmer()
                    Rectangle()
                        .frame(width: 150, height: 18)
                        .shimmer()
                }
                Spacer()
            }
            .padding()
        }
    }
    @ViewBuilder var squadDateTimeShimmerView: some View {
        HStack {
            Image(systemName: "calendar")
            VStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 100, height: 18)
                    .shimmer()
                Rectangle()
                    .frame(width: 150, height: 18)
                    .shimmer()
            }
            Spacer()
        }
        .padding()
    }
    @ViewBuilder var squadMembersShimmerView: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Members")
                    .font(.headline)
                Spacer()
                Image(systemName: "plus")
            }
            .padding()
            VStack(spacing: 0) {
                ForEach(0..<3) { _ in
                    HStack(spacing: 6) {
                        Circle()
                            .frame(height: 40)
                            .shimmer()
                        Rectangle()
                            .frame(width: 100, height: 18)
                            .shimmer()
                        Spacer()
                    }
                    .padding()
                    Divider()
                }
            }
        }
    }
}

#if DEBUG
#Preview {
    SquadGroupDetailsShimmerView()
}
#endif

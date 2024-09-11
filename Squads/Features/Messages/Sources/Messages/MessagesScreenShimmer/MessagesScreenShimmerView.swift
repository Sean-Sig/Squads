import SwiftUI

struct MessagesScreenShimmerView: View {
    var body: some View {
        ScrollView {
            messageRowShimmerView
            Divider()
            messageRowShimmerView
        }
    }

    @ViewBuilder var messageRowShimmerView: some View {
        VStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 0) {
                    Rectangle()
                        .frame(width: 130, height: 18)
                        .font(.headline)
                        .shimmer()
                    Spacer()
                    Rectangle()
                        .frame(width: 130, height: 18)
                        .font(.headline)
                        .shimmer()
                }
                Rectangle()
                    .frame(height: 18)
                    .font(.headline)
                    .shimmer()
            }
        }
        .padding()
    }
}

#if DEBUG
#Preview {
    MessagesScreenShimmerView()
}
#endif

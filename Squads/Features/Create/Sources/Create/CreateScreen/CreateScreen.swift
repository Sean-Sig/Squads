import SwiftUI
import CommonFoundation

public struct CreateScreen: View {

    public init() {}

    public var body: some View {
        HStack(spacing: 16) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.purple)
                    .frame(height: 200)
                VStack {
                    Image(systemName: "person.3")
                    Text("Create Squad")
                        .font(.title2)
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.purple)
                    .frame(height: 200)
                VStack {
                    Image(systemName: "play")
                    Text("Create Game")
                        .font(.title2)
                }
            }
        }
        .padding()
        .navigationTitle("Create")
    }
}

#if DEBUG
#Preview {
    CreateScreen()
}
#endif

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Browse")
            CoverImageView()
            Text("hi").font(.largeTitle)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

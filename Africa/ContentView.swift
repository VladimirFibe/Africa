import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.coverBuffalo)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

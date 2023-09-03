import SwiftUI

struct ContentView: View {
    let animals = Bundle.main.decode([AnimalModel].self, from: "animals.json")
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(value: animal) {
                        AnimalListItemView(animal: animal)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Africa")
            .navigationDestination(for: AnimalModel.self) { animal in
                AnimalDetailView(animal: animal)
            }
        }
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct AnimalDetailView: View {
    var animal: AnimalModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(Color.accentColor)
                    .padding(.horizontal)
                Group {
                    HeadingView(
                        systemName: "photo.on.rectangle.angled",
                        text: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
            }
        }
        .navigationTitle("Learn about \(animal.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let animals = Bundle.main.decode([AnimalModel].self, from: "animal.json")
    return NavigationStack {
        AnimalDetailView(animal: animals[0])
    }
}

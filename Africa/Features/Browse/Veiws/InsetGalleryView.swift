import SwiftUI

struct InsetGalleryView: View {
    let animal: AnimalModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

#Preview {
    let animals = Bundle.main.decode([AnimalModel].self, from: "animal.json")
    return InsetGalleryView(animal: animals[0])
}


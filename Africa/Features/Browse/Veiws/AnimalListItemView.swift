import SwiftUI

struct AnimalListItemView: View {
    let animal: AnimalModel
    var body: some View {
        HStack(spacing: 16.0) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    let animals = Bundle.main.decode([AnimalModel].self, from: "animals.json")
    return AnimalListItemView(animal: animals[1])
}

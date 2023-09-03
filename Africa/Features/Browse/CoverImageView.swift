import SwiftUI

struct CoverImageView: View {
    var covers: [CoverImageModel] = Bundle.main.decode([CoverImageModel].self, from: "covers.json")
    var body: some View {
        TabView {
            ForEach(covers) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        .frame(height: 300)
    }
}

#Preview {
    CoverImageView()
}

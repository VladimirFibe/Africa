import Foundation

struct AnimalModel: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

import Foundation

struct APIClient {
    let baseURL: URL

    func fetchFeaturedListings() async throws -> [Listing] {
        // TODO: Replace with real networking once backend is ready.
        return [
            Listing(id: UUID(), title: "Charizard Holo", setName: "Base Set", price: 325),
            Listing(id: UUID(), title: "Blue-Eyes White Dragon", setName: "LOB", price: 72)
        ]
    }

    static func preview() -> APIClient {
        APIClient(baseURL: URL(string: "https://preview.tcgcellr.com")!)
    }
}

struct Listing: Identifiable {
    let id: UUID
    let title: String
    let setName: String
    let price: Double
}

import Foundation

struct AppEnvironment {
    let apiClient: APIClient

    static func live() -> AppEnvironment {
        AppEnvironment(apiClient: APIClient(baseURL: URL(string: "https://api.tcgcellr.com")!))
    }

    static func preview() -> AppEnvironment {
        AppEnvironment(apiClient: .preview())
    }
}

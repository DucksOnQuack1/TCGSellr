import SwiftUI

@main
struct TCGSellrApp: App {
    private let environment = AppEnvironment.live()

    var body: some Scene {
        WindowGroup {
            ContentView(environment: environment)
        }
    }
}

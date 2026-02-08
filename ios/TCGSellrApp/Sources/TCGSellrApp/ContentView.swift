import SwiftUI

struct ContentView: View {
    let environment: AppEnvironment

    var body: some View {
        TabView {
            MarketplaceView(apiClient: environment.apiClient)
                .tabItem {
                    Label("Marketplace", systemImage: "rectangle.grid.2x2")
                }

            OnboardingView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView(environment: .preview())
}

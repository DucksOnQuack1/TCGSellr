import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Getting Started") {
                    Label("Complete your seller profile", systemImage: "person.text.rectangle")
                    Label("Add payout details", systemImage: "creditcard")
                    Label("Verify your identity", systemImage: "checkmark.seal")
                }

                Section("Next Up") {
                    Label("List your first card", systemImage: "tag")
                    Label("Share your storefront", systemImage: "link")
                }
            }
            .navigationTitle("Welcome")
        }
    }
}

#Preview {
    OnboardingView()
}

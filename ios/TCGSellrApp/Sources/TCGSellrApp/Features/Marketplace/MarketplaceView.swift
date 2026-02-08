import SwiftUI

struct MarketplaceView: View {
    let apiClient: APIClient

    var body: some View {
        NavigationStack {
            List {
                Section("Trending") {
                    MarketplaceRow(title: "Charizard Holo", subtitle: "Base Set · Near Mint", price: "$325")
                    MarketplaceRow(title: "Blue-Eyes White Dragon", subtitle: "LOB · Light Play", price: "$72")
                    MarketplaceRow(title: "Black Lotus", subtitle: "Unlimited · Moderately Played", price: "$12,800")
                }

                Section("Recently Listed") {
                    MarketplaceRow(title: "Lugia", subtitle: "Neo Genesis · Near Mint", price: "$210")
                    MarketplaceRow(title: "Pikachu Promo", subtitle: "Wizards · Mint", price: "$55")
                }
            }
            .navigationTitle("TCGSellr")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // TODO: Hook up search.
                    } label: {
                        Image(systemName: "magnifyingglass")
                    }
                }
            }
        }
    }
}

private struct MarketplaceRow: View {
    let title: String
    let subtitle: String
    let price: String

    var body: some View {
        HStack(spacing: 12) {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.blue.opacity(0.15))
                .frame(width: 48, height: 48)
                .overlay(
                    Image(systemName: "photo")
                        .foregroundStyle(.blue)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)

                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(price)
                .font(.headline)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    MarketplaceView(apiClient: .preview())
}

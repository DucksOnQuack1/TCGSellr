# TCGSellr iOS (SwiftUI + Swift Package Manager)

This repo now includes an initial SwiftUI app skeleton powered by Swift Package Manager. It is designed to be opened in Xcode and used as the foundation for the iOS client.

## Getting Started

1. Open `ios/TCGSellrApp/Package.swift` in Xcode 15+.
2. Select an iOS 16+ simulator.
3. Build & run the `TCGSellrApp` target.

> Note: SwiftPM packages don't generate an Xcode project file by default, so the easiest workflow is to open the `Package.swift` directly in Xcode.

## Project Layout

```
ios/TCGSellrApp/
├── Package.swift
├── Sources/
│   └── TCGSellrApp/
│       ├── TCGSellrApp.swift
│       ├── ContentView.swift
│       ├── Features/
│       │   ├── Marketplace/
│       │   └── Onboarding/
│       └── Services/
└── Tests/
    └── TCGSellrAppTests/
```

## Next Steps

- Define the API surface for listings, sellers, and inventory.
- Wire the `MarketplaceView` to real API responses.
- Add authentication and secure keychain storage.
- Add image loading and caching for card thumbnails.
- Introduce analytics and logging.

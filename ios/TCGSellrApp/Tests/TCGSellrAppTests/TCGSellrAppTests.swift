import XCTest
@testable import TCGSellrApp

final class TCGSellrAppTests: XCTestCase {
    func testPreviewEnvironmentUsesPreviewAPI() {
        let environment = AppEnvironment.preview()

        XCTAssertEqual(environment.apiClient.baseURL.absoluteString, "https://preview.tcgcellr.com")
    }
}

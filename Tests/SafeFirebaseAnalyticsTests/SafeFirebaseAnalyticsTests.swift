import XCTest
@testable import SafeFirebaseAnalytics

final class SafeFirebaseAnalyticsTests: XCTestCase {
    func testAllParameterNamesIsNotEmpty() throws {
        AnalyticsParameter.allCases.map(\.name).forEach {
            XCTAssertFalse($0.isEmpty)
        }
    }

    func testAllEventNamesIsNotEmpty() throws {
        AnalyticsEvent.allCases.map(\.name).forEach {
            XCTAssertFalse($0.isEmpty)
        }
    }
}

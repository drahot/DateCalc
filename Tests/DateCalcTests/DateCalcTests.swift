import Foundation
import XCTest

@testable import DateCalc

final class DateCalcTests: XCTestCase {

    func testInitialize() {
        let defaultCalendar = Calendar.current

        XCTAssertEqual(DateCalc.calendar.locale!, defaultCalendar.locale!)
        XCTAssertEqual(DateCalc.calendar.timeZone, defaultCalendar.timeZone)

        let timeZone = TimeZone(identifier: "Asia/Tokyo")!
        let locale = Locale(identifier: "ja_JP")

        DateCalc.initialize(
            calendar: Calendar(identifier: .japanese),
            timeZone: timeZone,
            locale: locale
        )

        XCTAssertEqual(DateCalc.calendar.locale!, locale)
        XCTAssertEqual(DateCalc.calendar.timeZone, timeZone)
    }

    func testExample() throws {


        // XCTest Documenationr
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}

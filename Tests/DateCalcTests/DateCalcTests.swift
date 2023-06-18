import Foundation
import XCTest

@testable import DateCalc

final class DateCalcTests: XCTestCase {

    func testInitialize() {
        let defaultCalendar = Calendar.current
        XCTAssertFalse(DateCalc.isInitialized)
        XCTAssertEqual(DateCalc.calendar.locale!, defaultCalendar.locale!)
        XCTAssertEqual(DateCalc.calendar.timeZone, defaultCalendar.timeZone)

        let calendar = Calendar(identifier: .japanese)
        let timeZone = TimeZone(identifier: "Asia/Tokyo")!
        let locale = Locale(identifier: "ja_JP")

        DateCalc.initialize(
            calendar: calendar,
            timeZone: timeZone,
            locale: locale
        )

        XCTAssertEqual(DateCalc.calendar.locale!, locale)
        XCTAssertEqual(DateCalc.calendar.timeZone, timeZone)
        XCTAssertTrue(DateCalc.isInitialized)
    }

    func testCalculate() throws {
        let calendar = DateCalc.calendar
        let date = Date()
//        print(date + 1.days)
        print(date - 1.days)


        XCTAssertEqual(date + 1.days, calendar.date(byAdding: .day, value: 1, to: date)!)
        XCTAssertEqual(date - 1.days, calendar.date(byAdding: .day, value: -1, to: date)!)

        // XCTest Documenationr
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}

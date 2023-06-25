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
        XCTAssertEqual(date + 1.days, calendar.date(byAdding: .day, value: 1, to: date)!)
        XCTAssertEqual(date - 1.days, calendar.date(byAdding: .day, value: -1, to: date)!)
        XCTAssertEqual(date + 1.months, calendar.date(byAdding: .month, value: 1, to: date)!)
        XCTAssertEqual(date - 20.months, calendar.date(byAdding: .month, value: -20, to: date)!)
        XCTAssertEqual(date + 10.years, calendar.date(byAdding: .year, value: 10, to: date)!)
        XCTAssertEqual(date - 20.years, calendar.date(byAdding: .year, value: -20, to: date)!)
        XCTAssertEqual(date + 10.seconds, calendar.date(byAdding: .second, value: 10, to: date)!)
        XCTAssertEqual(date - 10.seconds, calendar.date(byAdding: .second, value: -10, to: date)!)
        XCTAssertEqual(date + 1.weeks, calendar.date(byAdding: .weekOfYear, value: 1, to: date)!)

//        let day = (((date + 1.days) - date) as DateComponents).day!
//        XCTAssertEqual(day, 1)
//        let year = (((date + 10.years) - date) as DateComponents).year!
//        XCTAssertEqual(year, 10)
//        let twoYear = (((date + 24.months) - date) as DateComponents).year!
//        XCTAssertEqual(twoYear, 2)
    }
}

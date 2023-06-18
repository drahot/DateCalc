// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct DateCalc {

    private init() {
    }

    public static var calendar: Calendar = Calendar.current

    public static func initialize(zone: TimeZone? = nil, locale: Locale? = nil) {
        if let zone = zone {
            Self.calendar.timeZone = zone
        }
        if let locale = locale {
            Self.calendar.locale = locale
        }
    }
}

let calendarComponentsSet: Set<Calendar.Component> = [
    .era,
    .year,
    .month,
    .day,
    .hour,
    .minute,
    .second,
    .weekday,
    .weekdayOrdinal,
    .quarter,
    .weekOfMonth,
    .weekOfYear,
    .yearForWeekOfYear,
    .nanosecond,
    .calendar,
    .timeZone
]

let calendarComponents: [Calendar.Component] = [
    .era,
    .nanosecond,
    .second,
    .minute,
    .hour,
    .day,
    .month,
    .year,
    .quarter,
    .weekOfYear,
]

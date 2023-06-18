// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct DateCalc {

    private init() {
    }

    private static var initialized: Bool = false

    public static var isInitialized: Bool {
        get {
            Self.initialized
        }
    }

    public private(set) static var calendar: Calendar = Calendar.current

    public static func initialize(calendar: Calendar = Calendar.current, timeZone: TimeZone? = nil, locale: Locale? = nil) {
        guard !initialized else {
            return
        }
        initialized = true

        Self.calendar = calendar
        if let timeZone = timeZone {
            Self.calendar.timeZone = timeZone
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

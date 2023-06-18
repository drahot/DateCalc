//
// Created by 堀田竜也 on 2023/06/18.
//

import Foundation

public func -(lhs: Date, rhs: Date) -> DateComponents {
    DateCalc.calendar.dateComponents(calendarComponentsSet, from: rhs, to: lhs)
}

public func +(lhs: Date, rhs: DateComponents) -> Date {
    DateCalc.calendar.date(byAdding: rhs, to: lhs)!
}

public func -(lhs: Date, rhs: DateComponents) -> Date {
    lhs + minus(rhs)
}

private func minus(_ dt: DateComponents) -> DateComponents {
    var dateComponents = DateComponents()
    dateComponents.era = dt.era.map(-)
    dateComponents.nanosecond = dt.nanosecond.map(-)
    dateComponents.second = dt.second.map(-)
    dateComponents.minute = dt.minute.map(-)
    dateComponents.hour = dt.hour.map(-)
    dateComponents.day = dt.day.map(-)
    dateComponents.month = dt.month.map(-)
    dateComponents.year = dt.year.map(-)
    dateComponents.quarter = dt.quarter.map(-)
    dateComponents.weekdayOrdinal = dt.weekdayOrdinal.map(-)
    dateComponents.weekOfMonth = dt.weekOfMonth.map(-)
    return dateComponents
}

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

private func minus(_ dateComponents: DateComponents) -> DateComponents {
    var dateComponents = DateComponents()
    dateComponents.era = dateComponents.era.map(-)
    dateComponents.nanosecond = dateComponents.nanosecond.map(-)
    dateComponents.second = dateComponents.second.map(-)
    dateComponents.minute = dateComponents.minute.map(-)
    dateComponents.hour = dateComponents.hour.map(-)
    dateComponents.day = dateComponents.day.map(-)
    dateComponents.month = dateComponents.month.map(-)
    dateComponents.year = dateComponents.year.map(-)
    dateComponents.quarter = dateComponents.quarter.map(-)
    dateComponents.weekdayOrdinal = dateComponents.weekdayOrdinal.map(-)
    dateComponents.weekOfMonth = dateComponents.weekOfMonth.map(-)
    return dateComponents
}

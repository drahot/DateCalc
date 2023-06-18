//
// Created by 堀田竜也 on 2023/06/17.
//

import Foundation

public extension Int {

    fileprivate func toDateComponents(_ type: Calendar.Component) -> DateComponents {
        var dateComponents = DateComponents()
        calendarComponents.forEach {
            dateComponents.setValue(0, for: $0)
        }
        dateComponents.setValue(self, for: type)
        dateComponents.setValue(0, for: .era)
        return dateComponents
    }

    var nanoseconds: DateComponents {
        toDateComponents(.nanosecond)
    }

    var seconds: DateComponents {
        toDateComponents(.second)
    }

    var minutes: DateComponents {
        toDateComponents(.minute)
    }

    var hours: DateComponents {
        toDateComponents(.hour)
    }

    var days: DateComponents {
        toDateComponents(.day)
    }

    var weeks: DateComponents {
        toDateComponents(.weekOfYear)
    }

    var months: DateComponents {
        toDateComponents(.month)
    }

    var years: DateComponents {
        toDateComponents(.year)
    }

    var quarters: DateComponents {
        toDateComponents(.quarter)
    }
}

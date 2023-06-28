//
// Created by 堀田竜也 on 2023/06/28.
//

import Foundation

extension Date {
    func toFormat(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.calendar = DateCalc.calendar
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

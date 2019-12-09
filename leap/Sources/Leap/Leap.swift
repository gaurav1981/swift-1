//Solution goes in Sources
import Foundation
struct Year {
    var calendarYear:Int
    var isLeapYear:Bool{
        //        return checkIfYearIsLeap()
        switch (calendarYear % 4 == 0, calendarYear % 100 == 0, calendarYear % 400 == 0) {
        case (true, false, false):
            return true
        case (_, true, true):
            return true
        default:
            return false
        }
    }

    func checkIfYearIsLeap() -> Bool {
        switch (calendarYear % 4 == 0, calendarYear % 100 == 0, calendarYear % 400 == 0) {
        case (true, false, false):
            return true
        case (_, true, true):
            return true
        default:
            return false
        }
    }
}


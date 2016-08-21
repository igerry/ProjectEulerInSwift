import Foundation

/*
 Counting Sundays
 Problem 19
 171
 
 You are given the following information, but you may prefer to do some research for yourself.
 
 1 Jan 1900 was a Monday.
 Thirty days has September,
 April, June and November.
 All the rest have thirty-one,
 Saving February alone,
 Which has twenty-eight, rain or shine.
 And on leap years, twenty-nine.
 A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
 How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
 */
func isLeapYear(year:Int) -> Bool {
    let isLeap:Bool = (year % 4 == 0) && ((year % 400 == 0) || (year % 100 != 0))
    return isLeap
}

func problem19() -> Int {
    var daysInMonth:[Int:Int] = [
        1:31,
        2:28,
        3:31,
        4:30,
        5:31,
        6:30,
        7:31,
        8:31,
        9:30,
        10:31,
        11:30,
        12:31,
    ]

    var weekDay = 0 // 1:monday
    var specialSunndays = 0
    
    var year = 1900
    while (year < 2001) {
        var daysInYear = 365
        if isLeapYear(year) {
            daysInYear = 366
            daysInMonth[2] = 29
        } else {
            daysInYear = 365
            daysInMonth[2] = 28
        }
        
        var month = 1
        var day = 0
        for _ in 0..<daysInYear {
            // increase day & month
            day += 1
            if day > daysInMonth[month] {
                day -= daysInMonth[month]!
                month += 1
            }
            weekDay = (weekDay + 1) % 7
            print("\(year, month, day)=\(weekDay)")

            // special
            if (weekDay == 0 && day == 1) {
                if year != 1900 {
                    specialSunndays += 1
                }
            }
        }
        
        year += 1
    }
    
    return specialSunndays
}
let p19 = problem19()

//
//  Calendar+Additions.swift
//  TodoApp
//
//  Created by Anthony Merle on 07/06/2017.
//  Copyright © 2017 Anthony Merle. All rights reserved.
//

import Foundation

extension Calendar {
    
    func dateForEndOfFollowingWeekWith(_ date: Date) -> Date {
        let daysRemainingThisWeek = daysRemainingInWeekWith(date)
        var remainingDaysComponent = DateComponents()
        
        remainingDaysComponent.day = daysRemainingThisWeek
        
        return self.date(byAdding: remainingDaysComponent, to: date)!
    }

    func daysRemainingInWeekWith(_ date: Date) -> Int {
        let weekdayComponent = component(.weekday, from: date)
        let daysRange = range(of: .weekday, in: .weekOfYear, for: date)
        let daysPerWeek = daysRange!.count
        let daysRemaining = daysPerWeek - weekdayComponent

        return daysRemaining
    }

}

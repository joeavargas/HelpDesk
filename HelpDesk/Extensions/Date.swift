//
//  Date.swift
//  HelpDesk
//
//  Created by Joe Vargas on 5/8/24.
//

import Foundation

extension Date {
    static var threeDaysFromNow: Date {
        return Calendar.current.date(byAdding: .day, value: 3, to: Date()) ?? Date()
    }
}

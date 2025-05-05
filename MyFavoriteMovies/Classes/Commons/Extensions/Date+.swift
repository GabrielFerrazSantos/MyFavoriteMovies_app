//
//  Date+.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 06/04/25.
//

import Foundation

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }
    
    func distanceFromNow() -> String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.day, .hour]
        formatter.unitsStyle = .full
        return formatter.string(from: self, to: .now)
    }
}

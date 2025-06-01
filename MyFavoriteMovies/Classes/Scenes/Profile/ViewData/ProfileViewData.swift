//
//  ProfileViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

protocol ProfileViewData {
    var data: [ProfileSection]? { get }
    
    func set(recentActivities: [ProfileActivityModel])
}

enum ProfileSection {
    case profile
    case recentActivities(_ activities: [ProfileActivityModel])
}

class ProfileViewDataConcrete: ProfileViewData {
    // MARK: - Properties
    var data: [ProfileSection]?
    
    // MARK: - Functions
    func set(recentActivities: [ProfileActivityModel]) {
        data = [
            .profile,
            .recentActivities(recentActivities)
        ]
    }
}

//
//  TabBarViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

protocol TabBarViewData {
    var moviesTitle: String { get }
    var moviesIcon: UIImage? { get }
    var newsTitle: String { get }
    var newsIcon: UIImage? { get }
    var profileTitle: String { get }
    var profileIcon: UIImage? { get }
}

struct TabBarViewDataConcrete: TabBarViewData {
    // MARK: - Properties
    var moviesTitle: String {
        String(localized: "Movies")
    }
    
    var moviesIcon: UIImage? {
        UIImage(systemName: "film")
    }
    
    var newsTitle: String {
        String(localized: "News")
    }
    
    var newsIcon: UIImage? {
        UIImage(systemName: "newspaper")
    }
    
    var profileTitle: String {
        String(localized: "Profile")
    }
    
    var profileIcon: UIImage? {
        UIImage(systemName: "person.crop.circle")
    }
}

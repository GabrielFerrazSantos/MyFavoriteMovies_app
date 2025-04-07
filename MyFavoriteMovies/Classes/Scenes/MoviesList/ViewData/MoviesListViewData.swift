//
//  MoviesListViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/04/25.
//

protocol MoviesListViewData {
    var data: [MoviesListSection]? { get }
    
    func set(movies: [MoviesListItemModel])
}

enum MoviesListSection {
    case search
    case movies(_ movies: [MoviesListItemModel])
}

class MoviesListViewDataConcrete: MoviesListViewData {
    // MARK: - Properties
    var data: [MoviesListSection]?
    
    // MARK: - Functions
    func set(movies: [MoviesListItemModel]) {
        data = [
//            .search,
            .movies(movies)
        ]
    }
}

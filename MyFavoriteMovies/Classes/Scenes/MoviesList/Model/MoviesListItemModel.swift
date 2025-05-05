//
//  MoviesListItemModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/04/25.
//

struct MoviesListItemModel: Codable {
    // MARK: - Properties
    let id: Int
    let poster: String
    let title: String
    let releaseDate: String
}

//
//  ReviewRequestBody.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

struct ReviewRequestBody: Codable {
    // MARK: - Properties
    let movieId: Int
    let userId: Int
    let review: String
    let score: Int
}

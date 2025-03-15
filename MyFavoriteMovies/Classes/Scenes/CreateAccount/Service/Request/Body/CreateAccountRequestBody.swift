//
//  CreateAccountRequestBody.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 15/03/25.
//

struct CreateAccountRequestBody: Codable {
    // MARK: - Properties
    let name: String
    let username: String
    let password: String
}

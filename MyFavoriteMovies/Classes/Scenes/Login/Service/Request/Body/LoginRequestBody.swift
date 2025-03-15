//
//  LoginRequestBody.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

struct LoginRequestBody: Codable {
    // MARK: - Properties
    let username: String
    let password: String
}

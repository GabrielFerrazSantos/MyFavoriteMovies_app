//
//  Session.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

class Session {
    // MARK: - Properties
    static let shared = Session()
    var user: UserLoggedModel?
    
    // MARK: - Functions
    static func setupUserLogged(_ user: UserLoggedModel) {
        shared.user = user
    }
}

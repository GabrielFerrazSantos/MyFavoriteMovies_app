//
//  CommentaryRequestBody.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

struct CommentaryRequestBody: Codable {
    // MARK: - Properties
    let newsId: Int
    let userId: Int
    let commentary: String
}

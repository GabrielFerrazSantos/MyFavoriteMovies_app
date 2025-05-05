//
//  ReviewRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

import Alamofire

struct ReviewRequest: RequestWithBody {
    // MARK: - Properties
    let movieId: Int
    
    let review: String
    
    let score: Int
    
    var body: Codable {
        ReviewRequestBody(
            movieId: movieId,
            userId: Session.shared.user?.id ?? 0,
            review: review,
            score: score
        )
    }
    
    var endpoint: String {
        "review"
    }
    
    var method: HTTPMethod {
        .post
    }
}

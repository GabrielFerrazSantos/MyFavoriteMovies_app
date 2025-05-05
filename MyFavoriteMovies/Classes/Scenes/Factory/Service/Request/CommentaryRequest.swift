//
//  CommentaryRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

import Alamofire

struct CommentaryRequest: RequestWithBody {
    // MARK: - Properties
    let newsId: Int
    
    let commentary: String
    
    var body: Codable {
        CommentaryRequestBody(
            newsId: newsId,
            userId: Session.shared.user?.id ?? 0,
            commentary: commentary
        )
    }
    
    var endpoint: String {
        "commentary"
    }
    
    var method: HTTPMethod {
        .post
    }
}

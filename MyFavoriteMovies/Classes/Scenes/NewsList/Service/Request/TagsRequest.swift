//
//  TagsRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 06/04/25.
//

import Alamofire

struct TagsRequest: Request {
    // MARK: - Properties
    var endpoint: String {
        "tag"
    }
    
    var method: HTTPMethod {
        .get
    }
}

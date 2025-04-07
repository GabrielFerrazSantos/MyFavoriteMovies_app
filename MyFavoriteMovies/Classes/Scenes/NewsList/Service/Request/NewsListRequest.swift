//
//  NewsListRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 06/04/25.
//

import Alamofire

struct NewsListRequest: Request {
    // MARK: - Properties
    var endpoint: String {
        "news"
    }
    
    var method: HTTPMethod {
        .get
    }
}

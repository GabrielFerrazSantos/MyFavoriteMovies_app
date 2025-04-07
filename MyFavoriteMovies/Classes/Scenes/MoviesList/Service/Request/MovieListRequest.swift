//
//  MovieListRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 06/04/25.
//

import Alamofire

struct MovieListRequest: Request {
    var endpoint: String {
        "movie"
    }
    
    var method: HTTPMethod {
        .get
    }
}

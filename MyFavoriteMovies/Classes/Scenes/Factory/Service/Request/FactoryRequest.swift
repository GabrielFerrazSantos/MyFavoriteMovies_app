//
//  FactoryRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

import Alamofire

struct FactoryRequest: Request {
    // MARK: - Properties
    let screenType: FactoryScreenType
    
    var endpoint: String {
        "factory" + screenType.endpoint
    }
    
    var method: Alamofire.HTTPMethod {
        .get
    }
    
    var pathParameters: [String]? {
        switch screenType {
        case .movie(let id), .news(let id):
            return [String(id)]
        }
    }
}

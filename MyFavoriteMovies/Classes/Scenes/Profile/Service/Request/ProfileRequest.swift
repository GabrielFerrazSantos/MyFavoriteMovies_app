//
//  ProfileRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/06/25.
//

import Alamofire

struct ProfileRequest: Request {
    // MARK: - Properties
    var endpoint: String {
        "profile"
    }
    
    var method: HTTPMethod {
        .get
    }
    
    var pathParameters: [String]? {
        guard let user = Session.shared.user else { return nil }
        
        return [String(user.id)]
    }
}

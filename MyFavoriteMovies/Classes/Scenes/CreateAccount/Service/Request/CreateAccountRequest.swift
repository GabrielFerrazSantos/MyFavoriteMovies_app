//
//  CreateAccountRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 15/03/25.
//

import Alamofire

struct CreateAccountRequest: RequestWithBody {
    // MARK: - Properties
    let name: String
    
    let username: String
    
    let password: String
    
    var body: Codable {
        CreateAccountRequestBody(name: name, username: username, password: password)
    }
    
    var endpoint: String {
        "user"
    }
    
    var method: HTTPMethod {
        .post
    }
}

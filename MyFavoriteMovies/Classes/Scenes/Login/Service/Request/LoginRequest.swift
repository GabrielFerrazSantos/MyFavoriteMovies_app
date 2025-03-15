//
//  LoginRequest.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import Alamofire

struct LoginRequest: RequestWithBody {    
    // MARK: - Properties
    let username: String
    
    let password: String
    
    var body: Codable {
        LoginRequestBody(username: username, password: password)
    }
    
    var endpoint: String {
        "login"
    }
    
    var method: HTTPMethod {
        .post
    }
}

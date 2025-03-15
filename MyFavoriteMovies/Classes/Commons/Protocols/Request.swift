//
//  Request.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import Alamofire
import Foundation

protocol Request {
    var endpoint: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders { get }
    var pathParameters: [String]? { get }
    var queryParameters: [String: Any]? { get }    
}

protocol RequestWithBody: Request {
    var body: Codable { get }
}

extension Request {
    var headers: HTTPHeaders { [.contentType("application/json")] }
    var pathParameters: [String]? { nil }
    var queryParameters: [String: Any]? { nil }
}

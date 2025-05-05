//
//  Service.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import Alamofire

struct Empty: Decodable { }

class Service {
    // MARK: - Functions
    func makeRequest<T: Decodable>(
        request: Request,
        success: @escaping (T) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let url = createUrl(
            endpoint: request.endpoint,
            pathParameters: request.pathParameters,
            queryParameters: request.queryParameters
        )
        
        AF.request(
            url,
            method: request.method,
            headers: request.headers
        ).validate().responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(let data):
                success(data)
                
            case .failure(let error):
                failure(error)
            }
        }        
    }
    
    func makeRequestWithBody<T: Decodable>(
        request: RequestWithBody,
        success: @escaping (T) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let url = createUrl(endpoint: request.endpoint)
        
        AF.request(
            url,
            method: request.method,
            parameters: request.body,
            encoder: JSONParameterEncoder.default,
            headers: request.headers
        ).validate().responseDecodable(of: T.self) { (response) in
            switch response.result {
            case .success(let data):
                success(data)
                
            case .failure(let error):
                failure(error)
            }
        }
    }
    
    func createUrl(endpoint: String, pathParameters: [String]?, queryParameters: [String: Any]?) -> String {
        let baseUrl = "http://192.168.15.108:8080/api/v1/" + endpoint
        
        if let pathParameters = pathParameters {
            var urlString = baseUrl + "/" + pathParameters.joined(separator: "/")
            
            if let queryParameters = queryParameters {
                urlString += "?" + queryParameters.map { key, value in
                    return "\(key)=\(value)"
                }.joined(separator: "&")
            } else {
                return urlString
            }
        }
        
        return baseUrl
    }
    
    func createUrl(endpoint: String) -> String {
        "http://192.168.15.108:8080/api/v1/" + endpoint
    }
}

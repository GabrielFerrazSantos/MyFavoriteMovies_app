//
//  LoginService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

protocol LoginService {
    func login(
        username: String,
        password: String,
        success: @escaping (UserLoggedModel) -> Void,
        failure: @escaping (Error) -> Void
    )
}

class LoginServiceConcrete: Service, LoginService {
    // MARK: - Functions
    func login(
        username: String,
        password: String,
        success: @escaping (UserLoggedModel) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = LoginRequest(username: username, password: password)
        
        makeRequestWithBody(request: request) { (result: UserLoggedModel) in
            success(result)
        } failure: { error in
            failure(error)
        }
    }
}

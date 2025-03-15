//
//  CreateAccountService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 15/03/25.
//

protocol CreateAccountService {
    func createAccount(
        name: String,
        username: String,
        password: String,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    )
}

class CreateAccountServiceConcrete: Service, CreateAccountService {
    // MARK: - Functions
    func createAccount(
        name: String,
        username: String,
        password: String,
        success: @escaping () -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = CreateAccountRequest(name: name, username: username, password: password)
        
        makeRequestWithBody(request: request) { (result: Empty) in
            success()
        } failure: { error in
            failure(error)
        }
    }
}

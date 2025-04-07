//
//  CreateAccountViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

protocol CreateAccountViewModel {
    var state: Bindable<CreateAccountViewModelState> { get }
    var viewData: CreateAccountViewData { get }
    var delegate: CreateAccountViewModelDelegate? { get }
    
    func createAccount(name: String, username: String, password: String)
    func goToLogin()
}

protocol CreateAccountViewModelDelegate: AnyObject {
    func goToLogin()
}

enum CreateAccountViewModelState {
    case initial
    case loading
    case success
    case failure
}

class CreateAccountViewModelConcrete: CreateAccountViewModel {
    // MARK: - Properties
    var state: Bindable<CreateAccountViewModelState> = .init(.initial)
    let viewData: CreateAccountViewData = CreateAccountViewDataConcrete()
    let service: CreateAccountService = CreateAccountServiceConcrete()
    var delegate: CreateAccountViewModelDelegate?
    
    // MARK: - Functions
    func createAccount(name: String, username: String, password: String) {
        state.value = .loading
                
        service.createAccount(
            name: name,
            username: username,
            password: password
        ) {
            self.state.value = .success
        } failure: { _ in
            self.state.value = .failure
        }
    }
    
    func goToLogin() {
        delegate?.goToLogin()
    }
}

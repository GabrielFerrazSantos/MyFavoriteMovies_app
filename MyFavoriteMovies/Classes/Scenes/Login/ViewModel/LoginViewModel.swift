//
//  LoginViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

protocol LoginViewModel {
    var state: Bindable<LoginViewModelState> { get }
    var viewData: LoginViewData { get }
    var delegate: LoginViewModelDelegate? { get }
    
    func login(username: String, password: String)
    func goToCreateAccount()
}

protocol LoginViewModelDelegate: AnyObject {
    func goToCreateAccount()
}

enum LoginViewModelState {
    case initial
    case loading
    case success
    case failure
}

class LoginViewModelConcrete: LoginViewModel {
    // MARK: - Properties
    var state: Bindable<LoginViewModelState> = .init(.initial)
    let viewData: LoginViewData = LoginViewDataConcrete()
    let service: LoginServiceConcrete = LoginServiceConcrete()
    var delegate: LoginViewModelDelegate?
    
    // MARK: - Functions
    func login(username: String, password: String) {
        state.value = .loading
        
        service.login(username: username, password: password) { result in
            Session.setupUserLogged(result)
            self.state.value = .success
        } failure: { _ in
            self.state.value = .failure
        }
    }
    
    func goToCreateAccount() {
        delegate?.goToCreateAccount()
    }
}

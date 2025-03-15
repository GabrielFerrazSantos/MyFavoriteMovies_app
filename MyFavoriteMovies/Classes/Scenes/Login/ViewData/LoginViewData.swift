//
//  LoginViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

protocol LoginViewData {
    var usernamePlacheHolder: String { get }
    var passwordPlaceHolder: String { get }
    var createAccountButtonTitle: String { get }
    var loginButtonTitle: String { get }
    var emptyErrorText: String { get }
    var loginErrorText: String { get }
}

struct LoginViewDataConcrete: LoginViewData {
    // MARK: - Properties
    var usernamePlacheHolder: String {
        String(localized: "User")
    }
    
    var passwordPlaceHolder: String {
        String(localized: "Password")
    }
    
    var emptyErrorText: String {
        String(localized: "CantBeEmpty")
    }
    
    var loginErrorText: String {
        String(localized: "UserOrPasswordIncorrect")
    }
    
    var createAccountButtonTitle: String {
        String(localized: "CreateNewAccount")
    }

    var loginButtonTitle: String {
        String(localized: "Login")
    }
}

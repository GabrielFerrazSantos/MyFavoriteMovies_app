//
//  CreateAccountViewData.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

protocol CreateAccountViewData {
    var namePlacheHolder: String { get }
    var usernamePlacheHolder: String { get }
    var passwordPlaceHolder: String { get }
    var emptyErrorText: String { get }
    var usernameAlreadyExistsErrorText: String { get }
    var createAccountButtonTitle: String { get }
    var alertMessage: String { get }
}

class CreateAccountViewDataConcrete: CreateAccountViewData {
    // MARK: - Properties
    var namePlacheHolder: String {
        String(localized: "Name")
    }
    
    var usernamePlacheHolder: String {
        String(localized: "Username")
    }
    
    var passwordPlaceHolder: String {
        String(localized: "Password")
    }
    
    var emptyErrorText: String {
        String(localized: "CantBeEmpty")
    }
    
    var usernameAlreadyExistsErrorText: String {
        String(localized: "UsernameAlreadyExists")
    }
    
    var createAccountButtonTitle: String {
        String(localized: "Register")
    }
    
    var alertMessage: String {
        String(localized: "CreateAccountSuccess")
    }
}

//
//  LoginCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

import UIKit

class LoginCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions
    func start() {
        let viewModel = LoginViewModelConcrete()
        let viewController = LoginViewController(viewModel: viewModel)
        viewModel.delegate = self
        rootViewController.pushViewController(viewController, animated: true)
    }
}

// MARK: - Delegates
extension LoginCoordinator: LoginViewModelDelegate {
    func goToCreateAccount() {
        let coordinator = CreateAccountCoordinator(rootViewController: rootViewController)
        coordinator.start()
    }
    
    func goToHome() {
        let viewData = TabBarViewDataConcrete()
        let viewController = TabBarController(viewData: viewData)
        rootViewController.pushViewController(viewController, animated: true)
    }
}

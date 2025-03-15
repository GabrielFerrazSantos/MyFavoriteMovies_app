//
//  CreateAccountCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 14/03/25.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }
    
    // MARK: - Functions
    func start() {
        let viewModel = CreateAccountViewModelConcrete()
        let viewController = CreateAccountViewController(viewModel: viewModel)
        viewModel.delegate = self
        rootViewController.pushViewController(viewController, animated: true)
    }
}

// MARK: - Delegates
extension CreateAccountCoordinator: CreateAccountViewModelDelegate {
    func goToLogin() {
        rootViewController.popViewController(animated: true)
    }
}

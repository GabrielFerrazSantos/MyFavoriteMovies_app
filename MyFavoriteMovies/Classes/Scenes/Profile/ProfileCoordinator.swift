//
//  ProfileCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    var viewModel: ProfileViewModel
    let viewController: ProfileViewController
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
        self.viewModel = ProfileViewModelConcrete()
        self.viewController = ProfileViewController(viewModel: viewModel)
    }
    
    // MARK: - Functions
    func start() {
        rootViewController.pushViewController(viewController, animated: true)
    }
}

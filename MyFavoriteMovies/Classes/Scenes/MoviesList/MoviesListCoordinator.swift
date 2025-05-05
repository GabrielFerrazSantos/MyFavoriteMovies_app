//
//  MoviesListCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

import UIKit

class MoviesListCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    var viewModel: MoviesListViewModel
    let viewController: MoviesListViewController
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
        self.viewModel = MoviesListViewModelConcrete()
        self.viewController = MoviesListViewController(viewModel: viewModel)
        viewModel.coordinator = self
    }
    
    // MARK: - Functions
    func start() {
        rootViewController.pushViewController(viewController, animated: true)
    }
}

// MARK: - Delegates
extension MoviesListCoordinator: MoviesListViewModelDelegate {
    func goToMovie(_ movieId: Int) {
        let coordinator = FactoryCoordinator(rootViewController: rootViewController, screenType: .movie(id: movieId))
        coordinator.start()
    }
}

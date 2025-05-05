//
//  NewsListCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/05/25.
//

import UIKit

class NewsListCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    var viewModel: NewsListViewModel
    let viewController: NewsListViewController
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
        self.viewModel = NewsListViewModelConcrete()
        self.viewController = NewsListViewController(viewModel: viewModel)
        viewModel.coordinator = self
    }
    
    // MARK: - Functions
    func start() {
        rootViewController.pushViewController(viewController, animated: true)
    }
}

// MARK: - Delegates
extension NewsListCoordinator: NewsListViewModelDelegate {
    func goToNews(_ newsId: Int) {
        let coordinator = FactoryCoordinator(rootViewController: rootViewController, screenType: .news(id: newsId))
        coordinator.start()
    }
}

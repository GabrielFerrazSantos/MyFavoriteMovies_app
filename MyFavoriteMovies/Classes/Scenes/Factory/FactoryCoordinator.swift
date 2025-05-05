//
//  FactoryCoordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 01/05/25.
//

import UIKit

enum FactoryScreenType {
    case movie(id: Int)
    case news(id: Int)

    var endpoint: String {
        switch self {
        case .movie:
            "/movie"
            
        case .news:
            "/news"
        }
    }
}

class FactoryCoordinator: Coordinator {
    // MARK: - Properties
    var rootViewController: UINavigationController
    let screenType: FactoryScreenType
    
    // MARK: - Initializer
    init(rootViewController: UINavigationController, screenType: FactoryScreenType) {
        self.rootViewController = rootViewController
        self.screenType = screenType
    }
    
    // MARK: - Functions
    func start() {
        let viewModel = FactoryViewModelConcrete(screenType: screenType)
        let viewController = FactoryViewController(viewModel: viewModel)
        rootViewController.pushViewController(viewController, animated: true)
    }
}

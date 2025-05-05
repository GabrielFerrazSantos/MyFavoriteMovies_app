//
//  TabBarController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

class TabBarController: UITabBarController {    
    // MARK: - Properties
    let viewData: TabBarViewData
    let rootViewController: UINavigationController
    
    // MARK: - Initializers
    init(viewData: TabBarViewData, rootViewController: UINavigationController) {
        self.viewData = viewData
        self.rootViewController = rootViewController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        setupAppearance()
    }
    
    // MARK: - Functions
    func setupTabs() {
        let moviesListCoordinator = MoviesListCoordinator(rootViewController: rootViewController)
        let newsListCoordinator = NewsListCoordinator(rootViewController: rootViewController)
        let profileViewController = ProfileViewController()
        
        moviesListCoordinator.viewController.tabBarItem.title = viewData.moviesTitle
        moviesListCoordinator.viewController.tabBarItem.image = viewData.moviesIcon
        
        newsListCoordinator.viewController.tabBarItem.title = viewData.newsTitle
        newsListCoordinator.viewController.tabBarItem.image = viewData.newsIcon
        
        profileViewController.tabBarItem.title = viewData.profileTitle
        profileViewController.tabBarItem.image = viewData.profileIcon
        
        setViewControllers([moviesListCoordinator.viewController, newsListCoordinator.viewController, profileViewController], animated: true)
    }
    
    func setupAppearance() {
        let tabAppearance = UITabBarAppearance()
        tabAppearance.configureWithOpaqueBackground()
        tabAppearance.backgroundColor = .appThemeColor
        
        tabBar.standardAppearance = tabAppearance
        tabBar.scrollEdgeAppearance = tabAppearance
        setNeedsStatusBarAppearanceUpdate()
        
        tabBar.isTranslucent = false
        tabBar.tintColor = .white
    }
}

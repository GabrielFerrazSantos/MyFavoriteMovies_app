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
    
    // MARK: - Initializers
    init(viewData: TabBarViewData) {
        self.viewData = viewData
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
        let moviesViewController = MoviesListViewController(viewModel: MoviesListViewModelConcrete())
        let newsViewController = NewsListViewController(viewModel: NewsListViewModelConcrete())
        let profileViewController = ProfileViewController()
        
        moviesViewController.tabBarItem.title = viewData.moviesTitle
        moviesViewController.tabBarItem.image = viewData.moviesIcon
        
        newsViewController.tabBarItem.title = viewData.newsTitle
        newsViewController.tabBarItem.image = viewData.newsIcon
        
        profileViewController.tabBarItem.title = viewData.profileTitle
        profileViewController.tabBarItem.image = viewData.profileIcon
        
        setViewControllers([moviesViewController, newsViewController, profileViewController], animated: true)
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

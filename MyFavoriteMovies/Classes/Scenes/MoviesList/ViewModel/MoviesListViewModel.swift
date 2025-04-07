//
//  MoviesListViewModel.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/04/25.
//

import UIKit

protocol MoviesListViewModel {
    var state: Bindable<NewsListViewModelState> { get }
    var viewData: MoviesListViewData { get }
    
    func fetchMoviesList()
}

enum MoviesListViewModelState {
    case initial
    case loading
    case success
    case failure
    case filter
}

class MoviesListViewModelConcrete: MoviesListViewModel {
    // MARK: - Properties
    var state: Bindable<NewsListViewModelState> = .init(.initial)
    var viewData: MoviesListViewData = MoviesListViewDataConcrete()
    var service: MoviesListService = MoviesListServiceConcrete()
    
    // MARK: - Functions
    func fetchMoviesList() {
        state.value = .loading
        
        service.fetchMovies { [weak self] movies in
            self?.viewData.set(movies: movies)
            self?.state.value = .success
        } failure: { [weak self] _ in
            self?.state.value = .failure
        }
    }
}

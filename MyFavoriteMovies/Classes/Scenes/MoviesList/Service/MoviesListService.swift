//
//  MoviesListService.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 04/04/25.
//

protocol MoviesListService {
    func fetchMovies (
        success: @escaping ([MoviesListItemModel]) -> Void,
        failure: @escaping (Error) -> Void
    )
}

class MoviesListServiceConcrete: Service, MoviesListService {
    // MARK: - Functions
    func fetchMovies(
        success: @escaping ([MoviesListItemModel]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        let request = MovieListRequest()
        
        makeRequest(request: request) { (result: [MoviesListItemModel]) in
            success(result)
        } failure: { error in
            failure(error)
        }
    }
}
